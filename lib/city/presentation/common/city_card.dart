import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/city/application/add_city/add_city_bloc.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';

class CityCard extends StatelessWidget {
  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  final AutocompleteModel city;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showMyDialog(context, city);
      },
      child: Card(
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
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context, AutocompleteModel city) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (_) {
      return AlertDialog(
        title: const Text('Add city to my list'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Do you want to add ${city.localizedName} to your list?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Add'),
            onPressed: () {
              BlocProvider.of<AddCityBloc>(context).add(
                AddCityEvent.addCityToList(city: city, isDefault: true),
              );
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
