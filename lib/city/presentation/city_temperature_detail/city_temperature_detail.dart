import 'package:flutter/material.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/presentation/weather_detail/weather_detail.dart';

class CityTemperatureDetail extends StatelessWidget {
  const CityTemperatureDetail({
    Key? key,
    required this.cityModel,
  }) : super(key: key);

  final CityModel cityModel;

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
          WeatherDetail(
            cityModel: cityModel,
            showButtonCity: false,
          ),
        ],
      ),
    );
  }
}
