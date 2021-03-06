import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/app/domain/table_key.dart';
import 'package:weather_example/app/infrastructure/network_service.dart';
import 'package:weather_example/city/domain/city_model.dart';
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
  Future<Either<BasicError, bool>> addCity({
    required AutocompleteModel city,
    required bool isDefault,
  }) async {
    int savedCity = 0;
    final now = DateTime.now();
    final defaultDate = DateTime(now.year, now.month - 1, now.day);
    try {
      savedCity = await db.insert(TableKey.cities, {
        'id': city.key,
        'autocompleteModel': jsonEncode(city.toJson()),
        'isDefault': isDefault,
        'lastWeather': null,
        'fiveDays': null,
        'lastMeasureSinceEpoch': defaultDate.millisecondsSinceEpoch,
      });

      if (savedCity != 0 && isDefault) {
        await db.update(TableKey.cities, {'isDefault': false}, where: 'id != ${city.key}');
      }
    } on PlatformException catch (e) {
      return left(BasicError.error(e));
    } on Exception catch (e) {
      return left(BasicError.error(e));
    }

    if (savedCity == 0) {
      return left(BasicError.error(Exception('Can not save the city')));
    }

    return right(true);
  }

  @override
  Future<List<AutocompleteModel>> searchList({required String q}) async {
    final httpResponse = await networkService.get(
      base: 'locations',
      endpoint: 'cities/autocomplete',
      params: 'q=$q',
    );
    if (httpResponse.statusCode == 200) {
      final responseBody = jsonDecode(httpResponse.body);

      return AutocompleteModel.listFromJson(responseBody);
    }

    return [];
  }

  @override
  Future<Option<CityModel>> getDefaultCity() async {
    final myDefaultQuery = await db.query(TableKey.cities, where: 'isDefault = 1');
    List<CityModel> values = CityModel.listFromJson(myDefaultQuery);

    if (values.isEmpty) {
      final firstValue = await db.query(TableKey.cities);
      values = CityModel.listFromJson(firstValue);

      if (values.isEmpty) {
        return none();
      }
    }

    return optionOf(values.first);
  }

  @override
  Future<List<CityModel>> getCities() async {
    final cities = await db.query(TableKey.cities);

    return CityModel.listFromJson(cities);
  }
}
