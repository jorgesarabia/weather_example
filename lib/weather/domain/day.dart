import 'package:weather_example/weather/domain/metric.dart';
import 'package:weather_example/weather/domain/wind.dart';

class Day {
  int icon;
  String iconPhrase;
  bool hasPrecipitation;
  String shortPhrase;
  String longPhrase;
  int precipitationProbability;
  int thunderstormProbability;
  int rainProbability;
  int snowProbability;
  int iceProbability;
  Wind wind;
  Wind windGust;
  Metric totalLiquid;
  Metric rain;
  Metric snow;
  Metric ice;
  double hoursOfPrecipitation;
  double hoursOfRain;
  double hoursOfSnow;
  double hoursOfIce;
  int cloudCover;
  Metric evapotranspiration;
  Metric solarIrradiance;

  Day({
    required this.icon,
    required this.iconPhrase,
    required this.hasPrecipitation,
    required this.shortPhrase,
    required this.longPhrase,
    required this.precipitationProbability,
    required this.thunderstormProbability,
    required this.rainProbability,
    required this.snowProbability,
    required this.iceProbability,
    required this.wind,
    required this.windGust,
    required this.totalLiquid,
    required this.rain,
    required this.snow,
    required this.ice,
    required this.hoursOfPrecipitation,
    required this.hoursOfRain,
    required this.hoursOfSnow,
    required this.hoursOfIce,
    required this.cloudCover,
    required this.evapotranspiration,
    required this.solarIrradiance,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      icon: json['Icon'],
      iconPhrase: json['IconPhrase'],
      hasPrecipitation: json['HasPrecipitation'],
      shortPhrase: json['ShortPhrase'],
      longPhrase: json['LongPhrase'],
      precipitationProbability: json['PrecipitationProbability'],
      thunderstormProbability: json['ThunderstormProbability'],
      rainProbability: json['RainProbability'],
      snowProbability: json['SnowProbability'],
      iceProbability: json['IceProbability'],
      wind: Wind.fromJson(json['Wind']),
      windGust: Wind.fromJson(json['WindGust']),
      totalLiquid: Metric.fromJson(json['TotalLiquid']),
      rain: Metric.fromJson(json['Rain']),
      snow: Metric.fromJson(json['Snow']),
      ice: Metric.fromJson(json['Ice']),
      hoursOfPrecipitation: json['HoursOfPrecipitation'],
      hoursOfRain: json['HoursOfRain'],
      hoursOfSnow: json['HoursOfSnow'],
      hoursOfIce: json['HoursOfIce'],
      cloudCover: json['CloudCover'],
      evapotranspiration: Metric.fromJson(json['Evapotranspiration']),
      solarIrradiance: Metric.fromJson(json['SolarIrradiance']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Icon'] = icon;
    data['IconPhrase'] = iconPhrase;
    data['HasPrecipitation'] = hasPrecipitation;
    data['ShortPhrase'] = shortPhrase;
    data['LongPhrase'] = longPhrase;
    data['PrecipitationProbability'] = precipitationProbability;
    data['ThunderstormProbability'] = thunderstormProbability;
    data['RainProbability'] = rainProbability;
    data['SnowProbability'] = snowProbability;
    data['IceProbability'] = iceProbability;
    data['Wind'] = wind.toJson();
    data['WindGust'] = windGust.toJson();
    data['TotalLiquid'] = totalLiquid.toJson();
    data['Rain'] = rain.toJson();
    data['Snow'] = snow.toJson();
    data['Ice'] = ice.toJson();
    data['HoursOfPrecipitation'] = hoursOfPrecipitation;
    data['HoursOfRain'] = hoursOfRain;
    data['HoursOfSnow'] = hoursOfSnow;
    data['HoursOfIce'] = hoursOfIce;
    data['CloudCover'] = cloudCover;
    data['Evapotranspiration'] = evapotranspiration.toJson();
    data['SolarIrradiance'] = solarIrradiance.toJson();

    return data;
  }
}
