import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_example/app/injectable/injection.dart';
import 'package:weather_example/app/presentation/common_snack_bar.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/application/weather_bloc.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/weather_day_detail_screen.dart';
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
        bloc.add(WeatherEvent.setFromLocal(cityModel));

        return bloc;
      },
      child: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          if (state.basicError.somethingWentWrong) {
            CommonSnackBar.of(context).danger(state.basicError.message);
          }
        },
        builder: (context, state) {
          if (state.basicError.somethingWentWrong) {
            return const Center(child: Text('Error getting data'));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (state.cityModel.lastWeather != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: CurrentWeather(
                        cityModel: state.cityModel,
                      ),
                    ),
                  if (state.cityModel.fiveDays != null)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          state.cityModel.fiveDays!.dailyForecasts.length,
                          (index) {
                            final daily = state.cityModel.fiveDays!.dailyForecasts[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return WeatherDayDetailScreen(
                                        dailyForecasts: daily,
                                        city: state.cityModel,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: DayCard(
                                date: _day(daily.epochDate),
                                icon: daily.day.icon.toString(),
                                iconPhase: daily.day.iconPhrase,
                                maxTemperature: daily.temperature.maximum?.value.toString() ?? '',
                                minTemperature: daily.temperature.minimum?.value.toString() ?? '',
                              ),
                            );
                          },
                        ),
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

  String _day(int epochTime) {
    final date = DateTime.fromMillisecondsSinceEpoch(epochTime * 1000);

    return DateFormat.E().format(date);
  }
}
