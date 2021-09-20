import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/app/presentation/common_snack_bar.dart';
import 'package:weather_example/city/application/cities_bloc/cities_bloc.dart';
import 'package:weather_example/city/presentation/add_city/add_city_screen.dart';
import 'package:weather_example/weather/presentation/weather_detail/weather_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4426CD),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerLeft,
                stops: const [0.3, 0.5],
                colors: [const Color(0xFF5B12AE).withOpacity(0.6), const Color(0xFF4426CD)],
              ),
            ),
          ),
          BlocConsumer<CitiesBloc, CitiesState>(
            listener: (context, state) {
              if (!state.hasDefaultCity && !state.isLoading) {
                CommonSnackBar.of(context).warning('You don\'t have any city in your list\nPlease add one!');
                final addCity = Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const AddCityScreen();
                    },
                  ),
                );

                addCity.then((value) {
                  BlocProvider.of<CitiesBloc>(context).add(const CitiesEvent.getDefaultCity());
                });
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.hasDefaultCity) {
                return WeatherDetail(cityModel: state.defaultCity);
              }

              return const Center(
                child: Text('No city'),
              );
            },
          ),
        ],
      ),
    );
  }
}
