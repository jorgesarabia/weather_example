import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/app/injectable/injection.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/application/weather_bloc.dart';
import 'package:weather_example/weather/presentation/weather_detail/widgets/current_weather.dart';
import 'package:weather_example/weather/presentation/weather_detail/widgets/day_card.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({
    Key? key,
    required this.cityModel,
  }) : super(key: key);

  final CityModel cityModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (_) {
        final bloc = getIt<WeatherBloc>();
        bloc.add(WeatherEvent.getCurrentCondition(cityModel.id));
        // bloc.add(WeatherEvent.getFiveDays(cityModel.id));

        return bloc;
      },
      child: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.currentConditions == null) {
            return Container();
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: CurrentWeather(
                      currentConditions: state.currentConditions!,
                      cityModel: cityModel,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        DayCard(asset: 'sunny'),
                        DayCard(asset: 'froggy'),
                        DayCard(asset: 'cloudy'),
                        DayCard(asset: 'sunny'),
                        DayCard(asset: 'froggy'),
                        DayCard(asset: 'cloudy'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
