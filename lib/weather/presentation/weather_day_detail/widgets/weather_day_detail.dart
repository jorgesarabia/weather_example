import 'package:flutter/material.dart';
import 'package:weather_example/weather/domain/daily_forecast.dart';
import 'package:weather_example/weather/domain/day.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/some_probabilities.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_temperature_detail.dart';

class WeatherDayDetail extends StatelessWidget {
  const WeatherDayDetail._({
    Key? key,
    required this.dailyForecasts,
    required this.label,
    required this.day,
  }) : super(key: key);

  factory WeatherDayDetail.day({required DailyForecasts dailyForecasts}) {
    return WeatherDayDetail._(
      dailyForecasts: dailyForecasts,
      day: dailyForecasts.day,
      label: 'Day',
    );
  }

  factory WeatherDayDetail.night({required DailyForecasts dailyForecasts}) {
    return WeatherDayDetail._(
      dailyForecasts: dailyForecasts,
      day: dailyForecasts.night,
      label: 'Night',
    );
  }

  final DailyForecasts dailyForecasts;
  final Day day;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15.0),
        WeatherTemeperatureDetail(
          icon: day.icon.toString(),
          phrase: day.longPhrase,
        ),
        SomeProbabilities(day: day),
      ],
    );
  }
}
