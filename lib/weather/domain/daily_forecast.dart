import 'package:weather_example/weather/domain/day.dart';
import 'package:weather_example/weather/domain/degree_day_summary.dart';
import 'package:weather_example/weather/domain/moon.dart';
import 'package:weather_example/weather/domain/sun.dart';
import 'package:weather_example/weather/domain/temperature.dart';

class DailyForecasts {
  String date;
  int epochDate;
  Sun sun;
  Moon moon;
  Temperature temperature;
  Temperature realFeelTemperature;
  Temperature realFeelTemperatureShade;
  double hoursOfSun;
  DegreeDaySummary degreeDaySummary;
  Day day;
  Day night;
  List<String> sources;
  String mobileLink;
  String link;

  DailyForecasts({
    required this.date,
    required this.epochDate,
    required this.sun,
    required this.moon,
    required this.temperature,
    required this.realFeelTemperature,
    required this.realFeelTemperatureShade,
    required this.hoursOfSun,
    required this.degreeDaySummary,
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
      sun: Sun.fromJson(json['Sun']),
      moon: Moon.fromJson(json['Moon']),
      temperature: Temperature.fromJson(json['Temperature']),
      realFeelTemperature: Temperature.fromJson(json['RealFeelTemperature']),
      realFeelTemperatureShade: Temperature.fromJson(json['RealFeelTemperatureShade']),
      hoursOfSun: json['HoursOfSun'],
      degreeDaySummary: DegreeDaySummary.fromJson(json['DegreeDaySummary']),
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
    data['Sun'] = sun.toJson();
    data['Moon'] = moon.toJson();
    data['Temperature'] = temperature.toJson();
    data['RealFeelTemperature'] = realFeelTemperature.toJson();
    data['RealFeelTemperatureShade'] = realFeelTemperatureShade.toJson();
    data['HoursOfSun'] = hoursOfSun;
    data['DegreeDaySummary'] = degreeDaySummary.toJson();
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
