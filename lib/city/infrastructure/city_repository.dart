import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_example/city/domain/i_city_facade.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICityFacade)
class CityRepository implements ICityFacade {
  const CityRepository({
    required this.db,
  });

  final Database db;

  @override
  Future<bool> addCity({required bool isDefault}) async {
    return false;
  }

  @override
  Future<List<AutocompleteModel>> searchList({required String q}) async {
    if (httpResponse.statusCode == 200) {
      final cities = <CityModel>[];
      final responseBody = jsonDecode(httpResponse.body);

      responseBody['items'].forEach((city) {
        cities.add(CityModel.fromJson(city as Map<String, dynamic>));
      });

      await preferences!.setString(Keys.listOfCities, jsonEncode(cities));

      return right(cities);
    }

    return left(unit);
    return [];
  }
}
