import 'package:weather_example/weather/domain/country.dart';

class AutocompleteModel {
  AutocompleteModel({
    required this.version,
    required this.key,
    required this.type,
    required this.rank,
    required this.localizedName,
    required this.country,
    required this.administrativeArea,
  });

  factory AutocompleteModel.fromJson(Map<String, dynamic> json) {
    return AutocompleteModel(
      version: json['Version'],
      key: json['Key'],
      type: json['Type'],
      rank: json['Rank'],
      localizedName: json['LocalizedName'],
      country: Country.fromJson(json['Country']),
      administrativeArea: Country.fromJson(json['AdministrativeArea']),
    );
  }

  int version;
  String key;
  String type;
  int rank;
  String localizedName;
  Country country;
  Country administrativeArea;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Version'] = version;
    data['Key'] = key;
    data['Type'] = type;
    data['Rank'] = rank;
    data['LocalizedName'] = localizedName;
    data['Country'] = country.toJson();
    data['AdministrativeArea'] = administrativeArea.toJson();

    return data;
  }

  static List<AutocompleteModel> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AutocompleteModel>[];
    }
    return json.map((v) => AutocompleteModel.fromJson(v as Map<String, dynamic>)).toList();
  }
}
