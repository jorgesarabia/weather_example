import 'package:flutter/material.dart';

class WeatherTemeperatureDetail extends StatelessWidget {
  const WeatherTemeperatureDetail({
    Key? key,
    required this.icon,
    required this.phrase,
  }) : super(key: key);

  final String icon;
  final String phrase;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/$icon-s.png',
        ),
        Expanded(
          child: Text(
            phrase,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
