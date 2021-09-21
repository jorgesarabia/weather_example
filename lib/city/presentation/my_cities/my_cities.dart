import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/app/presentation/common_app_bar.dart';
import 'package:weather_example/app/presentation/common_wrapper.dart';
import 'package:weather_example/city/application/cities_bloc/cities_bloc.dart';
import 'package:weather_example/city/presentation/add_city/add_city_screen.dart';
import 'package:weather_example/city/presentation/my_cities/widgets/list_of_cities.dart';

class MyCitiesScreen extends StatefulWidget {
  const MyCitiesScreen({Key? key}) : super(key: key);

  @override
  State<MyCitiesScreen> createState() => _MyCitiesScreenState();
}

class _MyCitiesScreenState extends State<MyCitiesScreen> {
  @override
  void initState() {
    BlocProvider.of<CitiesBloc>(context).add(const CitiesEvent.getListOfCities());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonWrapper(
      child: BlocBuilder<CitiesBloc, CitiesState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: CommonAppBar(title: 'My Cities'),
                ),
                ListOfCities(cities: state.myCities),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 20.0,
                  ),
                  child: TextButton(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        'Add another city',
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
                      final addCity = Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const AddCityScreen();
                          },
                        ),
                      );

                      addCity.then((value) {
                        BlocProvider.of<CitiesBloc>(context).add(const CitiesEvent.getListOfCities());
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
