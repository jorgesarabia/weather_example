import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_example/app/presentation/common_value_label.dart';
import 'package:weather_example/weather/domain/day.dart';

class SomeProbabilities extends StatelessWidget {
  const SomeProbabilities({
    Key? key,
    required this.day,
  }) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CommonValueLabel(
            children: <TextSpan>[
              const TextSpan(
                text: 'Precipitation Probability: ',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '${day.precipitationProbability}%\n\n',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const TextSpan(
                text: 'Thunderstorm Probability: ',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '${day.thunderstormProbability}%\n\n',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const TextSpan(
                text: 'Rain Probability: ',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '${day.rainProbability}%\n\n',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const TextSpan(
                text: 'Snow Probability: ',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '${day.snowProbability}%\n\n',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const TextSpan(
                text: 'Ice Probability: ',
                style: TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: '${day.iceProbability}%\n\n',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
