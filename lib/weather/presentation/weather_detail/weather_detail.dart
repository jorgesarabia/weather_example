import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_example/app/injectable/injection.dart';
import 'package:weather_example/app/presentation/common_app_bar.dart';
import 'package:weather_example/app/presentation/common_snack_bar.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/city/presentation/my_cities/my_cities.dart';
import 'package:weather_example/weather/application/weather_bloc.dart';
import 'package:weather_example/weather/presentation/weather_day_detail/weather_day_detail_screen.dart';
import 'package:weather_example/weather/presentation/weather_detail/widgets/current_weather.dart';
import 'package:weather_example/weather/presentation/weather_detail/widgets/day_card.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({
    Key? key,
    required this.cityModel,
    this.showButtonCity = true,
  }) : super(key: key);

  final CityModel cityModel;
  final bool showButtonCity;

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
                  if (!showButtonCity) CommonAppBar(title: state.cityModel.city.localizedName),
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
                  if (showButtonCity)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 20.0,
                      ),
                      child: TextButton(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Text(
                            'View your cities',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          primary: Colors.grey,
                          onSurface: Colors.yellow,
                          side: const BorderSide(color: Colors.grey, width: 2),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const MyCitiesScreen();
                              },
                            ),
                          );
                        },
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
