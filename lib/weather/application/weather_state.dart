part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoading,
    required BasicError basicError,
    required CityModel cityModel,
  }) = _WeatherState;

  factory WeatherState.initial() {
    return WeatherState(
      isLoading: false,
      basicError: BasicError.empty(),
      cityModel: CityModel.empty(),
    );
  }
}
