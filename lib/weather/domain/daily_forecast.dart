import 'package:weather_example/weather/domain/day.dart';
import 'package:weather_example/weather/domain/min_max_temperature.dart';

class DailyForecasts {
  String date;
  int epochDate;
  MinMaxTemperature temperature;
  Day day;
  Day night;
  List<String> sources;
  String mobileLink;
  String link;

  DailyForecasts({
    required this.date,
    required this.epochDate,
    required this.temperature,
    required this.day,
    required this.night,
    required this.sources,
    required this.mobileLink,
    required this.link,
  });

  factory DailyForecasts.fromJson(Map<String, dynamic> json) {
    return DailyForecasts(
      date: json['Date'],
      epochDate: json['EpochDate'],
      temperature: MinMaxTemperature.fromJson(json['Temperature']),
      day: Day.fromJson(json['Day']),
      night: Day.fromJson(json['Night']),
      sources: json['Sources'].cast<String>(),
      mobileLink: json['MobileLink'],
      link: json['Link'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Date'] = date;
    data['EpochDate'] = epochDate;
    data['Temperature'] = temperature.toJson();
    data['Day'] = day.toJson();
    data['Night'] = night.toJson();
    data['Sources'] = sources;
    data['MobileLink'] = mobileLink;
    data['Link'] = link;

    return data;
  }

  static List<DailyForecasts> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DailyForecasts>[];
    }
    return json.map((v) => DailyForecasts.fromJson(v as Map<String, dynamic>)).toList();
  }
}
