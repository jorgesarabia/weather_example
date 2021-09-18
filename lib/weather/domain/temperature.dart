import 'package:weather_example/weather/domain/metric.dart';

class Temperature {
  Temperature({
    required this.metric,
    required this.imperial,
  });

  final Metric? metric;
  final Metric? imperial;

  factory Temperature.fromJson(Map<String, dynamic> json) {
    return Temperature(
      metric: json['Metric'] != null ? Metric.fromJson(json['Metric']) : null,
      imperial: json['Imperial'] != null ? Metric.fromJson(json['Imperial']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Metric'] = metric?.toJson();
    data['Imperial'] = imperial?.toJson();

    return data;
  }
}
