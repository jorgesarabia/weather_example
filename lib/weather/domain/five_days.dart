import 'package:weather_example/weather/domain/daily_forecast.dart';
import 'package:weather_example/weather/domain/headline.dart';

class FiveDays {
  Headline headline;
  List<DailyForecasts> dailyForecasts;

  FiveDays({
    required this.headline,
    required this.dailyForecasts,
  });

  factory FiveDays.fromJson(Map<String, dynamic> json) {
    return FiveDays(
      headline: Headline.fromJson(json['Headline']),
      dailyForecasts: DailyForecasts.listFromJson(json['DailyForecasts']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Headline'] = headline.toJson();
    data['DailyForecasts'] = dailyForecasts.map((v) => v.toJson()).toList();

    return data;
  }
}
