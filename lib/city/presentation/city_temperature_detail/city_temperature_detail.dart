import 'package:flutter/material.dart';
import 'package:weather_example/app/presentation/common_wrapper.dart';
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
    return CommonWrapper(
      child: WeatherDetail(
        cityModel: cityModel,
        showButtonCity: false,
      ),
    );
  }
}
