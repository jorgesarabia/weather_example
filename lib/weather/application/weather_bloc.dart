import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/domain/i_weather_facade.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.weatherFacade) : super(WeatherState.initial());

  final IWeatherFacade weatherFacade;

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    yield* event.map(
      setFromLocal: _mapSetFromLocalEventToState,
      getCurrentConditionAndFiveDays: _mapGetCurrentConditionEventToState,
    );
  }

  Stream<WeatherState> _mapSetFromLocalEventToState(_SetFromLocal event) async* {
    final currentCity = event.city;

    final measuredTime = currentCity.lastMeasureSinceEpoch;
    final now = DateTime.now();
    final diff = now.subtract(const Duration(hours: 12)).millisecondsSinceEpoch;

    final isMoreThanTwelve = measuredTime < diff;
    final hasNotFiveDays = currentCity.fiveDays == null;
    final hasNotLastWeather = currentCity.lastWeather == null;

    if (isMoreThanTwelve || hasNotFiveDays || hasNotLastWeather) {
      add(WeatherEvent.getCurrentConditionAndFiveDays(currentCity.id));
    } else {
      yield state.copyWith(
        isLoading: false,
        cityModel: currentCity,
      );
    }
  }

  Stream<WeatherState> _getFiveDays(_GetCurrentCondition event) async* {
    yield state.copyWith(isLoading: true);

    final answer = await weatherFacade.getFiveDays(cityId: event.cityKey);

    final currentCity = state.cityModel;

    yield* answer.fold(
      (l) async* {
        currentCity.fiveDays = null;

        yield state.copyWith(
          isLoading: false,
          basicError: l,
          cityModel: currentCity,
        );
      },
      (r) async* {
        currentCity.fiveDays = r;

        yield state.copyWith(
          isLoading: false,
          cityModel: currentCity,
        );
      },
    );
  }

  Stream<WeatherState> _mapGetCurrentConditionEventToState(_GetCurrentCondition event) async* {
    yield state.copyWith(isLoading: true);

    final answer = await weatherFacade.getCurrentCondition(cityId: event.cityKey);

    final currentCity = state.cityModel;

    yield* answer.fold(
      (l) async* {
        currentCity.lastWeather = null;
        currentCity.lastMeasureSinceEpoch = DateTime.now().millisecondsSinceEpoch;

        yield state.copyWith(
          isLoading: false,
          basicError: l,
          cityModel: currentCity,
        );
      },
      (r) async* {
        currentCity.lastWeather = r;
        currentCity.lastMeasureSinceEpoch = DateTime.now().millisecondsSinceEpoch;

        yield state.copyWith(
          isLoading: false,
          cityModel: currentCity,
        );
      },
    );

    yield* _getFiveDays(event);
  }
}
