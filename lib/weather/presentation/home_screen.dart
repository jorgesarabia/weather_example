import 'package:flutter/material.dart';
import 'package:weather_example/weather/presentation/widgets/current_weather.dart';
import 'package:weather_example/weather/presentation/widgets/day_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CurrentWeather(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      DayCard(asset: 'sunny'),
                      DayCard(asset: 'froggy'),
                      DayCard(asset: 'cloudy'),
                      DayCard(asset: 'sunny'),
                      DayCard(asset: 'froggy'),
                      DayCard(asset: 'cloudy'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
