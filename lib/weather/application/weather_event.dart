part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getCurrentCondition(int cityKey) = _GetCurrentCondition;
  const factory WeatherEvent.getFiveDays(int cityKey) = _GetFiveDaysCondition;
}
