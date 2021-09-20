import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_example/weather/domain/current_condition.dart';
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
      getCurrentCondition: _mapGetCurrentConditionEventToState,
      getFiveDays: (_GetFiveDaysCondition value) async* {},
    );
  }

  Stream<WeatherState> _mapGetCurrentConditionEventToState(_GetCurrentCondition event) async* {
    yield state.copyWith(isLoading: true);

    final answer = await weatherFacade.getCurrentCondition(cityId: event.cityKey);

    yield* answer.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          currentConditions: null,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          currentConditions: r,
        );
      },
    );
  }
}
