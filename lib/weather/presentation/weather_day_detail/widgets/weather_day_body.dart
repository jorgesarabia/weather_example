import 'package:flutter/material.dart';
import 'package:weather_example/weather/domain/daily_forecast.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_day_detail.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_temeprature.dart';

class WeatherDayBody extends StatelessWidget {
  const WeatherDayBody({
    Key? key,
    required this.dailyForecasts,
  }) : super(key: key);

  final DailyForecasts dailyForecasts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WeatherTemperature(dailyForecasts: dailyForecasts),
          const _Divider(),
          WeatherDayDetail.day(dailyForecasts: dailyForecasts),
          const _Divider(),
          WeatherDayDetail.night(dailyForecasts: dailyForecasts),
          const _Divider(),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Divider(
        height: 10,
        color: Colors.grey,
      ),
    );
  }
}
