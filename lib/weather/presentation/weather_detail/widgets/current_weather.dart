import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/domain/current_condition.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    Key? key,
    required this.currentConditions,
    required this.cityModel,
  }) : super(key: key);

  final CurrentConditions currentConditions;
  final CityModel cityModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2,
              child: Image.asset(
                'assets/${currentConditions.weatherIcon}-s.png',
              ),
            ),
            const SizedBox(width: 15),
            Column(
              children: [
                Text(
                  cityModel.city.localizedName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  currentConditions.measuredWhen,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  currentConditions.weatherText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                ),
              ),
              _CurrentTemperature(
                temeperature: currentConditions.currentTemperature,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CurrentTemperature extends StatelessWidget {
  const _CurrentTemperature({
    Key? key,
    required this.temeperature,
  }) : super(key: key);

  final String temeperature;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temeperature,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 120.0,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            '°C',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),
      ],
    );
  }
}
