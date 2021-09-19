import 'package:flutter/material.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';

class CityCard extends StatelessWidget {
  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  final AutocompleteModel city;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.2),
      elevation: 5,
      child: ListTile(
        title: Text(
          city.localizedName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '${city.administrativeArea.localizedName}-${city.country.localizedName}',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
