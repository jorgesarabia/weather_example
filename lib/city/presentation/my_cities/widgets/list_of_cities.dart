import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/city/application/cities_bloc/cities_bloc.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/city/presentation/city_temperature_detail/city_temperature_detail.dart';

class ListOfCities extends StatelessWidget {
  const ListOfCities({Key? key, required this.cities}) : super(key: key);

  final List<CityModel> cities;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        cities.length,
        (index) {
          final city = cities[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                final cityDetail = Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return CityTemperatureDetail(cityModel: city);
                    },
                  ),
                );

                cityDetail.then((value) {
                  BlocProvider.of<CitiesBloc>(context).add(const CitiesEvent.getListOfCities());
                });
              },
              child: Card(
                color: Colors.white.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text(
                      city.city.localizedName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: city.fiveDays != null
                        ? Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/${city.fiveDays!.dailyForecasts[0].day.icon}-s.png',
                                    width: 60.0,
                                  ),
                                  Text(
                                    '${city.fiveDays!.dailyForecasts[0].temperature.maximum!.value} ??C',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                city.fiveDays!.dailyForecasts[0].day.shortPhrase,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        : null,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
