import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_example/app/infrastructure/network_service.dart';
import 'package:weather_example/city/domain/i_city_facade.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';

@LazySingleton(as: ICityFacade)
class CityRepository implements ICityFacade {
  const CityRepository({
    required this.db,
    required this.networkService,
  });

  final Database db;
  final NetworkService networkService;

  @override
  Future<bool> addCity({
    required AutocompleteModel city,
    required bool isDefault,
  }) async {
    final savedCity = await db.insert('Cities', {
      'id': city.key,
      'autocompleteModel': jsonEncode(city.toJson()),
      'isDefault': isDefault,
      'lastWeather': '',
      'lastMeasure': '',
    });

    print(savedCity);
    return false;
  }

  @override
  Future<List<AutocompleteModel>> searchList({required String q}) async {
    final httpResponse = await networkService.get(
      endpoint: 'cities/autocomplete',
      params: 'q=$q',
    );
    if (httpResponse.statusCode == 200) {
      // final cities = <AutocompleteModel>[];
      final responseBody = jsonDecode(httpResponse.body);

      return AutocompleteModel.listFromJson(responseBody);
    }

    return [];
  }
}
