import 'package:flutter/material.dart';
import 'package:weather_example/weather/domain/daily_forecast.dart';

class WeatherTemperature extends StatelessWidget {
  const WeatherTemperature({
    Key? key,
    required this.dailyForecasts,
  }) : super(key: key);

  final DailyForecasts dailyForecasts;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Temeprature',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Minimum: ${dailyForecasts.temperature.minimum!.value} °C',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Maximum: ${dailyForecasts.temperature.maximum!.value} °C',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
