import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/domain/daily_forecast.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_day_app_bar.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_day_body.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/widgets/weather_temperature_detail.dart';

class WeatherDayDetailScreen extends StatelessWidget {
  const WeatherDayDetailScreen({
    Key? key,
    required this.dailyForecasts,
    required this.city,
  }) : super(key: key);

  final DailyForecasts dailyForecasts;
  final CityModel city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4426CD),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerLeft,
                stops: const [0.3, 0.5],
                colors: [const Color(0xFF5B12AE).withOpacity(0.6), const Color(0xFF4426CD)],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                WeatherDayAppBar(title: headerTitle),
                WeatherDayBody(dailyForecasts: dailyForecasts),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String get headerTitle {
    final buffer = StringBuffer('${city.city.localizedName} (');
    buffer.write('${city.city.administrativeArea.localizedName}-');
    buffer.write('${city.city.country.localizedName})');

    return buffer.toString();
  }

  String get measuredWhen {
    final date = DateTime.fromMillisecondsSinceEpoch(dailyForecasts.epochDate * 1000);

    return DateFormat.yMMMd().add_jm().format(date);
  }
}
