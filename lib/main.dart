import 'package:flutter/material.dart';
import 'package:weather_example/app/injectable/injection.dart';
import 'package:weather_example/city/presentation/add_city/add_city_screen.dart';
import 'package:weather_example/weather/presentation/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AddCityScreen(),
    );
  }
}
