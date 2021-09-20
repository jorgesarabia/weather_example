import 'package:weather_example/weather/domain/metric.dart';

class MinMaxTemperature {
  MinMaxTemperature({
    required this.minimum,
    required this.maximum,
  });

  final Metric? minimum;
  final Metric? maximum;

  factory MinMaxTemperature.fromJson(Map<String, dynamic> json) {
    return MinMaxTemperature(
      minimum: json['Minimum'] != null ? Metric.fromJson(json['Minimum']) : null,
      maximum: json['Maximum'] != null ? Metric.fromJson(json['Maximum']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Minimum'] = minimum?.toJson();
    data['Maximum'] = maximum?.toJson();

    return data;
  }
}
