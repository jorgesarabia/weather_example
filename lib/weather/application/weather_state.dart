part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoading,
    required CurrentConditions? currentConditions,
    required FiveDays? fiveDays,
    required CityModel cityModel,
  }) = _WeatherState;

  factory WeatherState.initial() {
    return WeatherState(
      isLoading: false,
      currentConditions: null,
      fiveDays: null,
      cityModel: CityModel.empty(),
    );
  }
}
