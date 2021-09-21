import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_example/app/injectable/injection.dart';
import 'package:weather_example/app/presentation/common_snack_bar.dart';
import 'package:weather_example/app/presentation/common_wrapper.dart';
import 'package:weather_example/city/application/add_city/add_city_bloc.dart';
import 'package:weather_example/city/application/cities_bloc/cities_bloc.dart';
import 'package:weather_example/city/presentation/add_city/widgets/search_body.dart';
import 'package:weather_example/city/presentation/add_city/widgets/search_field.dart';

class AddCityScreen extends StatelessWidget {
  const AddCityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWrapper(
      child: BlocProvider<AddCityBloc>(
        create: (_) => getIt<AddCityBloc>(),
        child: BlocListener<AddCityBloc, AddCityState>(
          listener: (context, state) {
            if (state.basicError.somethingWentWrong) {
              CommonSnackBar.of(context).danger(state.basicError.message);
            }

            if (state.newCityWasAdded) {
              if (state.wasAddedAsDefault) {
                BlocProvider.of<CitiesBloc>(context).add(const CitiesEvent.getDefaultCity());
              }
              Navigator.of(context).pop();
            }
          },
          child: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
