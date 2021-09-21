part of 'cities_bloc.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.getDefaultCity() = _GetDefaultCity;
  const factory CitiesEvent.getListOfCities() = _GetListOfCities;
}
