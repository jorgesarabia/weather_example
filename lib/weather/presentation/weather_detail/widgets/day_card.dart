import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DayCard extends StatelessWidget {
  const DayCard(
      {Key? key,
      required this.icon,
      required this.iconPhase,
      required this.minTemperature,
      required this.maxTemperature,
      required this.date})
      : super(key: key);

  final String icon;
  final String iconPhase;
  final String minTemperature;
  final String maxTemperature;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        color: Colors.white.withOpacity(0.3),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _GreyText(label: date),
              Image.asset(
                'assets/$icon-s.png',
              ),
              _GreyText(label: iconPhase),
              _LabelDegrees(label: maxTemperature),
              _LabelDegrees(label: minTemperature),
            ],
          ),
        ),
      ),
    );
  }
}

class _GreyText extends StatelessWidget {
  const _GreyText({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}

class _LabelDegrees extends StatelessWidget {
  const _LabelDegrees({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        const Text(
          '°C',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
