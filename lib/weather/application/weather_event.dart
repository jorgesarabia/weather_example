part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getCurrentConditionAndFiveDays(int cityKey) = _GetCurrentCondition;
  const factory WeatherEvent.setFromLocal(CityModel city) = _SetFromLocal;
}
