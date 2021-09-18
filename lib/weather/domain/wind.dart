import 'package:weather_example/weather/domain/direction.dart';
import 'package:weather_example/weather/domain/metric.dart';

class Wind {
  Metric speed;
  Direction direction;

  Wind({
    required this.speed,
    required this.direction,
  });

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: Metric.fromJson(json['Speed']),
      direction: Direction.fromJson(json['Direction']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Speed'] = speed.toJson();
    data['Direction'] = direction.toJson();

    return data;
  }
}
