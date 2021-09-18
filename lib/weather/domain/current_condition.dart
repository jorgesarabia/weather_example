import 'package:weather_example/weather/domain/temperature.dart';

class CurrentConditions {
  const CurrentConditions({
    required this.localObservationDateTime,
    required this.epochTime,
    required this.weatherText,
    required this.weatherIcon,
    required this.hasPrecipitation,
    required this.isDayTime,
    required this.temperature,
    required this.mobileLink,
    required this.link,
  });

  final String localObservationDateTime;
  final int epochTime;
  final String weatherText;
  final int weatherIcon;
  final bool hasPrecipitation;
  final bool isDayTime;
  final Temperature temperature;
  final String mobileLink;
  final String link;

  factory CurrentConditions.fromJson(Map<String, dynamic> json) {
    return CurrentConditions(
      localObservationDateTime: json['LocalObservationDateTime'],
      epochTime: json['EpochTime'],
      weatherText: json['WeatherText'],
      weatherIcon: json['WeatherIcon'],
      hasPrecipitation: json['HasPrecipitation'],
      isDayTime: json['IsDayTime'],
      temperature: json['Temperature'],
      mobileLink: json['MobileLink'],
      link: json['Link'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['LocalObservationDateTime'] = localObservationDateTime;
    data['EpochTime'] = epochTime;
    data['WeatherText'] = weatherText;
    data['WeatherIcon'] = weatherIcon;
    data['HasPrecipitation'] = hasPrecipitation;
    data['IsDayTime'] = isDayTime;
    data['Temperature'] = temperature.toJson();
    data['MobileLink'] = mobileLink;
    data['Link'] = link;

    return data;
  }
}
