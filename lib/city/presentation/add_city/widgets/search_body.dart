import 'package:flutter/material.dart';
import 'package:weather_example/city/presentation/common/city_card.dart';
import 'package:weather_example/weather/domain/administrative_area.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';
import 'package:weather_example/weather/domain/country.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CityCard(
          city: AutocompleteModel(
            version: 1,
            key: '9243',
            type: 'City',
            rank: 55,
            localizedName: 'Clorinda',
            country: Country(iD: 'AR', localizedName: 'Argentina'),
            administrativeArea: Country(iD: 'P', localizedName: 'Formosa'),
          ),
        ),
      ],
    );
  }
}
