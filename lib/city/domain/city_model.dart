import 'dart:convert';

import 'package:weather_example/weather/domain/autocomplete_model.dart';
import 'package:weather_example/weather/domain/country.dart';
import 'package:weather_example/weather/domain/current_condition.dart';
import 'package:weather_example/weather/domain/five_days.dart';

class CityModel {
  CityModel({
    required this.id,
    required this.city,
    required this.isDefault,
    required this.lastWeather,
    required this.lastMeasureSinceEpoch,
    required this.fiveDays,
  });

  factory CityModel.empty() {
    return CityModel(
      id: 0,
      city: AutocompleteModel(
        version: 0,
        key: '',
        type: '',
        rank: 0,
        localizedName: '',
        country: Country(iD: '', localizedName: ''),
        administrativeArea: Country(iD: '', localizedName: ''),
      ),
      isDefault: false,
      lastWeather: null,
      fiveDays: null,
      lastMeasureSinceEpoch: DateTime.now().millisecondsSinceEpoch,
    );
  }

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'],
      city: AutocompleteModel.fromJson(jsonDecode(json['autocompleteModel'])),
      isDefault: json['isDefault'] == 1,
      lastWeather: json['lastWeather'],
      lastMeasureSinceEpoch: json['lastMeasureSinceEpoch'],
      fiveDays: json['fiveDays'],
    );
  }

  AutocompleteModel city;
  bool isDefault;
  CurrentConditions? lastWeather;
  FiveDays? fiveDays;
  int lastMeasureSinceEpoch;
  int id;

  static List<CityModel> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CityModel>[];
    }
    return json.map((v) => CityModel.fromJson(v as Map<String, dynamic>)).toList();
  }
}
