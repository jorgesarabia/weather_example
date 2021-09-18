import 'package:weather_example/weather/domain/metric.dart';

class Elevation {
  Metric metric;
  Metric imperial;

  Elevation({
    required this.metric,
    required this.imperial,
  });

  factory Elevation.fromJson(Map<String, dynamic> json) {
    return Elevation(
      metric: Metric.fromJson(json['Metric']),
      imperial: Metric.fromJson(json['Imperial']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Metric'] = metric.toJson();
    data['Imperial'] = imperial.toJson();

    return data;
  }
}
