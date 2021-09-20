import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/application/weather_bloc.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    Key? key,
    required this.cityModel,
  }) : super(key: key);

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
                'assets/${cityModel.lastWeather!.weatherIcon}-s.png',
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
                  dateFormater(DateTime.now().millisecondsSinceEpoch),
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
                  cityModel.lastWeather!.weatherText,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 25.0,
                  ),
                ),
              ),
              _CurrentTemperature(
                temeperature: cityModel.lastWeather!.currentTemperature,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Updated at ${dateFormater(cityModel.lastMeasureSinceEpoch)}',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                BlocProvider.of<WeatherBloc>(context).add(WeatherEvent.getCurrentConditionAndFiveDays(cityModel.id));
              },
              icon: const Icon(
                Icons.sync,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String dateFormater(int epoch) {
    final date = DateTime.fromMillisecondsSinceEpoch(epoch);
    return DateFormat.yMMMd().add_jm().format(date);
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
