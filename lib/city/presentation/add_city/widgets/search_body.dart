import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/city/application/add_city/add_city_bloc.dart';
import 'package:weather_example/city/presentation/common/city_card.dart';
import 'package:weather_example/weather/domain/administrative_area.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';
import 'package:weather_example/weather/domain/country.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddCityBloc, AddCityState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.listOfCities.isEmpty) {
          return Card(
            color: Colors.white.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'There is no cities to show',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          );
        }

        return Column(
          children: List.generate(
            state.listOfCities.length,
            (index) {
              return CityCard(city: state.listOfCities[index]);
            },
          ),
        );
      },
    );
  }
}
