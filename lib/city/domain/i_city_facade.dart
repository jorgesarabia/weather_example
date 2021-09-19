import 'package:weather_example/weather/domain/autocomplete_model.dart';

abstract class ICityFacade {
  Future<List<AutocompleteModel>> searchList({required String q});
  Future<bool> addCity({required bool isDefault});
}
