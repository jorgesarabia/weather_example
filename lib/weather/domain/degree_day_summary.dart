import 'package:weather_example/weather/domain/metric.dart';

class DegreeDaySummary {
  Metric heating;
  Metric cooling;

  DegreeDaySummary({
    required this.heating,
    required this.cooling,
  });

  factory DegreeDaySummary.fromJson(Map<String, dynamic> json) {
    return DegreeDaySummary(
      heating: Metric.fromJson(json['Heating']),
      cooling: Metric.fromJson(json['Cooling']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Heating'] = heating.toJson();
    data['Cooling'] = cooling.toJson();

    return data;
  }
}
