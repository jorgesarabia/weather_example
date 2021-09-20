part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState({
    required bool isLoading,
    required bool hasDefaultCity,
    required CityModel defaultCity,
  }) = _CitiesState;

  factory CitiesState.initial() {
    return CitiesState(
      isLoading: false,
      hasDefaultCity: false,
      defaultCity: CityModel.empty(),
    );
  }
}
