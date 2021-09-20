part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required bool isLoading,
    required CurrentConditions? currentConditions,
  }) = _WeatherState;

  factory WeatherState.initial() {
    return const WeatherState(
      isLoading: false,
      currentConditions: null,
    );
  }
}
