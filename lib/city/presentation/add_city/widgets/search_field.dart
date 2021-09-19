import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/city/application/add_city/add_city_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Type the city name',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                contentPadding: EdgeInsets.all(10),
              ),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (value) {
                BlocProvider.of<AddCityBloc>(context).add(AddCityEvent.getListByQuery(value));
              },
            ),
          ),
        ],
      ),
    );
  }
}
