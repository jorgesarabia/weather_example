import 'package:weather_example/weather/domain/elevation.dart';

class GeoPosition {
  double latitude;
  double longitude;
  Elevation elevation;

  GeoPosition({
    required this.latitude,
    required this.longitude,
    required this.elevation,
  });

  factory GeoPosition.fromJson(Map<String, dynamic> json) {
    return GeoPosition(
      latitude: json['Latitude'],
      longitude: json['Longitude'],
      elevation: Elevation.fromJson(json['Elevation']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Latitude'] = latitude;
    data['Longitude'] = longitude;
    data['Elevation'] = elevation.toJson();

    return data;
  }
}
