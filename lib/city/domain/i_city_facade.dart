import 'package:dartz/dartz.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/city/domain/city_model.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';

abstract class ICityFacade {
  Future<List<AutocompleteModel>> searchList({required String q});
  Future<Either<BasicError, bool>> addCity({
    required AutocompleteModel city,
    required bool isDefault,
  });
  Future<Option<CityModel>> getDefaultCity();
}
