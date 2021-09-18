import 'package:weather_example/weather/domain/administrative_area.dart';
import 'package:weather_example/weather/domain/geoposition.dart';
import 'package:weather_example/weather/domain/region.dart';
import 'package:weather_example/weather/domain/timezone.dart';

class Search {
  int version;
  String key;
  String type;
  int rank;
  String localizedName;
  String englishName;
  String primaryPostalCode;
  Region region;
  Region country;
  AdministrativeArea administrativeArea;
  TimeZone timeZone;
  GeoPosition geoPosition;
  bool isAlias;
  List<String> dataSets;

  Search({
    required this.version,
    required this.key,
    required this.type,
    required this.rank,
    required this.localizedName,
    required this.englishName,
    required this.primaryPostalCode,
    required this.region,
    required this.country,
    required this.administrativeArea,
    required this.timeZone,
    required this.geoPosition,
    required this.isAlias,
    required this.dataSets,
  });

  factory Search.fromJson(Map<String, dynamic> json) {
    return Search(
      version: json['Version'],
      key: json['Key'],
      type: json['Type'],
      rank: json['Rank'],
      localizedName: json['LocalizedName'],
      englishName: json['EnglishName'],
      primaryPostalCode: json['PrimaryPostalCode'],
      region: Region.fromJson(json['Region']),
      country: Region.fromJson(json['Country']),
      administrativeArea: AdministrativeArea.fromJson(json['AdministrativeArea']),
      timeZone: TimeZone.fromJson(json['TimeZone']),
      geoPosition: GeoPosition.fromJson(json['GeoPosition']),
      isAlias: json['IsAlias'],
      dataSets: json['DataSets'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Version'] = version;
    data['Key'] = key;
    data['Type'] = type;
    data['Rank'] = rank;
    data['LocalizedName'] = localizedName;
    data['EnglishName'] = englishName;
    data['PrimaryPostalCode'] = primaryPostalCode;
    data['Region'] = region.toJson();
    data['Country'] = country.toJson();
    data['AdministrativeArea'] = administrativeArea.toJson();
    data['TimeZone'] = timeZone.toJson();
    data['GeoPosition'] = geoPosition.toJson();
    data['IsAlias'] = isAlias;
    data['DataSets'] = dataSets;

    return data;
  }
}
