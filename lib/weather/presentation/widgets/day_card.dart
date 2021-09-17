import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    Key? key,
    required this.asset,
  }) : super(key: key);

  final String asset;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '01:00',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Image.asset(
            'assets/$asset.png',
            width: 50.0,
          ),
          const Text(
            'Mostly Sunny',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '37',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '°C',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
