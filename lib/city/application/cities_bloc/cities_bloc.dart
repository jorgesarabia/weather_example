import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/city/domain/i_city_facade.dart';

part 'cities_state.dart';
part 'cities_event.dart';
part 'cities_bloc.freezed.dart';

@injectable
class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc({required this.iCityFacade}) : super(CitiesState.initial());

  final ICityFacade iCityFacade;

  @override
  Stream<CitiesState> mapEventToState(CitiesEvent event) async* {
    yield* event.map(
      getDefaultCity: _mapAppIsStartingEventToState,
      getListOfCities: _mapGetListOfCitiesEventToState,
    );
  }

  Stream<CitiesState> _mapGetListOfCitiesEventToState(_GetListOfCities event) async* {
    yield state.copyWith(isLoading: true);

    final cities = await iCityFacade.getCities();

    yield state.copyWith(
      isLoading: false,
      myCities: cities,
    );
  }

  Stream<CitiesState> _mapAppIsStartingEventToState(_GetDefaultCity event) async* {
    yield state.copyWith(isLoading: true);

    final getDefaultCity = await iCityFacade.getDefaultCity();

    yield* getDefaultCity.fold(
      () async* {
        yield state.copyWith(
          isLoading: false,
          hasDefaultCity: false,
        );
      },
      (defaultCity) async* {
        yield state.copyWith(
          isLoading: false,
          hasDefaultCity: true,
          defaultCity: defaultCity,
        );
      },
    );
  }
}
