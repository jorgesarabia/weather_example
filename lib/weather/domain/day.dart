class Day {
  int icon;
  String iconPhrase;
  // Wind wind;
  // Wind windGust;
  // Metric totalLiquid;
  // Metric rain;
  // Metric snow;
  // Metric ice;
  // int cloudCover;
  // Metric evapotranspiration;
  // Metric solarIrradiance;

  Day({
    required this.icon,
    required this.iconPhrase,
    // required this.wind,
    // required this.windGust,
    // required this.totalLiquid,
    // required this.rain,
    // required this.snow,
    // required this.ice,
    // required this.cloudCover,
    // required this.evapotranspiration,
    // required this.solarIrradiance,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      icon: json['Icon'],
      iconPhrase: json['IconPhrase'],
      // wind: Wind.fromJson(json['Wind']),
      // windGust: Wind.fromJson(json['WindGust']),
      // totalLiquid: Metric.fromJson(json['TotalLiquid']),
      // rain: Metric.fromJson(json['Rain']),
      // snow: Metric.fromJson(json['Snow']),
      // ice: Metric.fromJson(json['Ice']),
      // cloudCover: json['CloudCover'],
      // evapotranspiration: Metric.fromJson(json['Evapotranspiration']),
      // solarIrradiance: Metric.fromJson(json['SolarIrradiance']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['Icon'] = icon;
    data['IconPhrase'] = iconPhrase;
    // data['Wind'] = wind.toJson();
    // data['WindGust'] = windGust.toJson();
    // data['TotalLiquid'] = totalLiquid.toJson();
    // data['Rain'] = rain.toJson();
    // data['Snow'] = snow.toJson();
    // data['Ice'] = ice.toJson();
    // data['CloudCover'] = cloudCover;
    // data['Evapotranspiration'] = evapotranspiration.toJson();
    // data['SolarIrradiance'] = solarIrradiance.toJson();

    return data;
  }
}
