import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_example/city/presentation/add_city/widgets/search_body.dart';
import 'package:weather_example/city/presentation/add_city/widgets/search_field.dart';

class AddCityScreen extends StatelessWidget {
  const AddCityScreen({Key? key}) : super(key: key);

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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 50.0,
                      bottom: 20.0,
                    ),
                    child: SearchField(),
                  ),
                  SearchBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
