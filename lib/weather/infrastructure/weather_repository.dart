import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/weather/domain/current_condition.dart';
import 'package:weather_example/weather/domain/i_weather_facade.dart';

@LazySingleton(as: IWeatherFacade)
class WeatherRepository implements IWeatherFacade {
  @override
  Future<Either<BasicError, CurrentConditions>> getCurrentCondition({required int cityId}) async {
    await Future.delayed(const Duration(milliseconds: 500));

    return right(CurrentConditions.listFromJson(jsonDecode(currentConditions)).first);
  }

  @override
  Future<void> getFiveDays({required int cityId}) async {}
}

const currentConditions =
    '[ { "LocalObservationDateTime": "2021-09-19T22:55:00-03:00", "EpochTime": 1632102900, "WeatherText": "Clear", "WeatherIcon": 33, "HasPrecipitation": false, "PrecipitationType": null, "IsDayTime": false, "Temperature": { "Metric": { "Value": 28.9, "Unit": "C", "UnitType": 17 }, "Imperial": { "Value": 84.0, "Unit": "F", "UnitType": 18 } }, "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/current-weather/9243?lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/current-weather/9243?lang=en-us" } ]';

const fiveDays =
    '{ "Headline": { "EffectiveDate": "2021-09-21T02:00:00-03:00", "EffectiveEpochDate": 1632200400, "Severity": 3, "Text": "Thunderstorms in the area late tomorrow night through Tuesday morning", "Category": "thunderstorm", "EndDate": "2021-09-21T14:00:00-03:00", "EndEpochDate": 1632243600, "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?unit=c&lang=en-us" }, "DailyForecasts": [ { "Date": "2021-09-19T07:00:00-03:00", "EpochDate": 1632045600, "Sun": { "Rise": "2021-09-19T06:44:00-03:00", "EpochRise": 1632044640, "Set": "2021-09-19T18:46:00-03:00", "EpochSet": 1632087960 }, "Moon": { "Rise": "2021-09-19T17:41:00-03:00", "EpochRise": 1632084060, "Set": "2021-09-20T06:41:00-03:00", "EpochSet": 1632130860, "Phase": "WaxingGibbous", "Age": 13 }, "Temperature": { "Minimum": { "Value": 24.7, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 38.9, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperature": { "Minimum": { "Value": 23.3, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 41.8, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperatureShade": { "Minimum": { "Value": 23.3, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 38.2, "Unit": "C", "UnitType": 17 } }, "HoursOfSun": 8.9, "DegreeDaySummary": { "Heating": { "Value": 0.0, "Unit": "C", "UnitType": 17 }, "Cooling": { "Value": 14.0, "Unit": "C", "UnitType": 17 } }, "AirAndPollen": [ { "Name": "AirQuality", "Value": 0, "Category": "Good", "CategoryValue": 1, "Type": "Ozone" }, { "Name": "Grass", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Mold", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Ragweed", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Tree", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "UVIndex", "Value": 9, "Category": "Very High", "CategoryValue": 4 } ], "Day": { "Icon": 2, "IconPhrase": "Mostly sunny", "HasPrecipitation": false, "ShortPhrase": "Mostly sunny and hot", "LongPhrase": "Hot with sunshine and a few clouds; caution advised if outside for extended periods of time", "PrecipitationProbability": 1, "ThunderstormProbability": 0, "RainProbability": 1, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 13.0, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 25, "Localized": "NNE", "English": "NNE" } }, "WindGust": { "Speed": { "Value": 20.4, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 20, "Localized": "NNE", "English": "NNE" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 27, "Evapotranspiration": { "Value": 0.2, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 83.4, "Unit": "W/m²", "UnitType": 33 } }, "Night": { "Icon": 35, "IconPhrase": "Partly cloudy", "HasPrecipitation": false, "ShortPhrase": "Partly cloudy and very warm", "LongPhrase": "Partly cloudy and very warm", "PrecipitationProbability": 0, "ThunderstormProbability": 0, "RainProbability": 0, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 11.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 36, "Localized": "NE", "English": "NE" } }, "WindGust": { "Speed": { "Value": 13.0, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 25, "Localized": "NNE", "English": "NNE" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 21, "Evapotranspiration": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 1.2, "Unit": "W/m²", "UnitType": 33 } }, "Sources": [ "AccuWeather" ], "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=1&unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=1&unit=c&lang=en-us" }, { "Date": "2021-09-20T07:00:00-03:00", "EpochDate": 1632132000, "Sun": { "Rise": "2021-09-20T06:43:00-03:00", "EpochRise": 1632130980, "Set": "2021-09-20T18:46:00-03:00", "EpochSet": 1632174360 }, "Moon": { "Rise": "2021-09-20T18:37:00-03:00", "EpochRise": 1632173820, "Set": "2021-09-21T07:14:00-03:00", "EpochSet": 1632219240, "Phase": "Full", "Age": 14 }, "Temperature": { "Minimum": { "Value": 20.6, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 40.1, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperature": { "Minimum": { "Value": 18.2, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 41.2, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperatureShade": { "Minimum": { "Value": 18.2, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 38.3, "Unit": "C", "UnitType": 17 } }, "HoursOfSun": 9.5, "DegreeDaySummary": { "Heating": { "Value": 0.0, "Unit": "C", "UnitType": 17 }, "Cooling": { "Value": 12.0, "Unit": "C", "UnitType": 17 } }, "AirAndPollen": [ { "Name": "AirQuality", "Value": 0, "Category": "Good", "CategoryValue": 1, "Type": "Ozone" }, { "Name": "Grass", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Mold", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Ragweed", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Tree", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "UVIndex", "Value": 9, "Category": "Very High", "CategoryValue": 4 } ], "Day": { "Icon": 30, "IconPhrase": "Hot", "HasPrecipitation": false, "ShortPhrase": "Mostly sunny and very hot", "LongPhrase": "Sunny to partly cloudy and very hot; caution advised if outside for extended periods of time", "PrecipitationProbability": 4, "ThunderstormProbability": 0, "RainProbability": 4, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 13.0, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 303, "Localized": "WNW", "English": "WNW" } }, "WindGust": { "Speed": { "Value": 24.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 305, "Localized": "NW", "English": "NW" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 21, "Evapotranspiration": { "Value": 0.2, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 93.1, "Unit": "W/m²", "UnitType": 33 } }, "Night": { "Icon": 42, "IconPhrase": "Mostly cloudy w/ t-storms", "HasPrecipitation": true, "PrecipitationType": "Rain", "PrecipitationIntensity": "Moderate", "ShortPhrase": "Breezy, humid; a t-storm late", "LongPhrase": "Becoming cloudy, breezy and humid with a thunderstorm late", "PrecipitationProbability": 51, "ThunderstormProbability": 31, "RainProbability": 51, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 24.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 181, "Localized": "S", "English": "S" } }, "WindGust": { "Speed": { "Value": 31.5, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 185, "Localized": "S", "English": "S" } }, "TotalLiquid": { "Value": 1.5, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 1.5, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 1.0, "HoursOfRain": 1.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 92, "Evapotranspiration": { "Value": 0.1, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 0.4, "Unit": "W/m²", "UnitType": 33 } }, "Sources": [ "AccuWeather" ], "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=2&unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=2&unit=c&lang=en-us" }, { "Date": "2021-09-21T07:00:00-03:00", "EpochDate": 1632218400, "Sun": { "Rise": "2021-09-21T06:42:00-03:00", "EpochRise": 1632217320, "Set": "2021-09-21T18:46:00-03:00", "EpochSet": 1632260760 }, "Moon": { "Rise": "2021-09-21T19:32:00-03:00", "EpochRise": 1632263520, "Set": "2021-09-22T07:46:00-03:00", "EpochSet": 1632307560, "Phase": "WaningGibbous", "Age": 15 }, "Temperature": { "Minimum": { "Value": 15.5, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 22.8, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperature": { "Minimum": { "Value": 13.8, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 22.1, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperatureShade": { "Minimum": { "Value": 13.8, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 20.7, "Unit": "C", "UnitType": 17 } }, "HoursOfSun": 1.3, "DegreeDaySummary": { "Heating": { "Value": 0.0, "Unit": "C", "UnitType": 17 }, "Cooling": { "Value": 1.0, "Unit": "C", "UnitType": 17 } }, "AirAndPollen": [ { "Name": "AirQuality", "Value": 0, "Category": "Good", "CategoryValue": 1, "Type": "Ozone" }, { "Name": "Grass", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Mold", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Ragweed", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Tree", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "UVIndex", "Value": 2, "Category": "Low", "CategoryValue": 1 } ], "Day": { "Icon": 15, "IconPhrase": "Thunderstorms", "HasPrecipitation": true, "PrecipitationType": "Rain", "PrecipitationIntensity": "Heavy", "ShortPhrase": "A couple of morning t-storms", "LongPhrase": "A couple of thunderstorms in the morning; otherwise, cloudy, breezy and cooler", "PrecipitationProbability": 70, "ThunderstormProbability": 42, "RainProbability": 70, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 24.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 178, "Localized": "S", "English": "S" } }, "WindGust": { "Speed": { "Value": 29.6, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 175, "Localized": "S", "English": "S" } }, "TotalLiquid": { "Value": 14.1, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 14.1, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 2.0, "HoursOfRain": 2.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 98, "Evapotranspiration": { "Value": 0.1, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 33.4, "Unit": "W/m²", "UnitType": 33 } }, "Night": { "Icon": 38, "IconPhrase": "Mostly cloudy", "HasPrecipitation": false, "ShortPhrase": "Clouds breaking", "LongPhrase": "Clouds breaking", "PrecipitationProbability": 9, "ThunderstormProbability": 0, "RainProbability": 9, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 14.8, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 170, "Localized": "S", "English": "S" } }, "WindGust": { "Speed": { "Value": 24.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 165, "Localized": "SSE", "English": "SSE" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 91, "Evapotranspiration": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 0.6, "Unit": "W/m²", "UnitType": 33 } }, "Sources": [ "AccuWeather" ], "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=3&unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=3&unit=c&lang=en-us" }, { "Date": "2021-09-22T07:00:00-03:00", "EpochDate": 1632304800, "Sun": { "Rise": "2021-09-22T06:41:00-03:00", "EpochRise": 1632303660, "Set": "2021-09-22T18:47:00-03:00", "EpochSet": 1632347220 }, "Moon": { "Rise": "2021-09-22T20:25:00-03:00", "EpochRise": 1632353100, "Set": "2021-09-23T08:17:00-03:00", "EpochSet": 1632395820, "Phase": "WaningGibbous", "Age": 16 }, "Temperature": { "Minimum": { "Value": 17.3, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 27.0, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperature": { "Minimum": { "Value": 16.3, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 28.5, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperatureShade": { "Minimum": { "Value": 16.3, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 25.7, "Unit": "C", "UnitType": 17 } }, "HoursOfSun": 3.6, "DegreeDaySummary": { "Heating": { "Value": 0.0, "Unit": "C", "UnitType": 17 }, "Cooling": { "Value": 4.0, "Unit": "C", "UnitType": 17 } }, "AirAndPollen": [ { "Name": "AirQuality", "Value": 0, "Category": "Good", "CategoryValue": 1, "Type": "Ozone" }, { "Name": "Grass", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Mold", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Ragweed", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Tree", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "UVIndex", "Value": 8, "Category": "Very High", "CategoryValue": 4 } ], "Day": { "Icon": 4, "IconPhrase": "Intermittent clouds", "HasPrecipitation": false, "ShortPhrase": "Partly sunny and warmer", "LongPhrase": "Sun and areas of high clouds, pleasant and warmer", "PrecipitationProbability": 4, "ThunderstormProbability": 0, "RainProbability": 4, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 11.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 160, "Localized": "SSE", "English": "SSE" } }, "WindGust": { "Speed": { "Value": 16.7, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 153, "Localized": "SSE", "English": "SSE" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 79, "Evapotranspiration": { "Value": 0.1, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 50.0, "Unit": "W/m²", "UnitType": 33 } }, "Night": { "Icon": 35, "IconPhrase": "Partly cloudy", "HasPrecipitation": false, "ShortPhrase": "Partly cloudy", "LongPhrase": "Partly cloudy", "PrecipitationProbability": 21, "ThunderstormProbability": 0, "RainProbability": 21, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 11.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 191, "Localized": "S", "English": "S" } }, "WindGust": { "Speed": { "Value": 18.5, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 197, "Localized": "SSW", "English": "SSW" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 76, "Evapotranspiration": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 1.0, "Unit": "W/m²", "UnitType": 33 } }, "Sources": [ "AccuWeather" ], "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=4&unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=4&unit=c&lang=en-us" }, { "Date": "2021-09-23T07:00:00-03:00", "EpochDate": 1632391200, "Sun": { "Rise": "2021-09-23T06:40:00-03:00", "EpochRise": 1632390000, "Set": "2021-09-23T18:47:00-03:00", "EpochSet": 1632433620 }, "Moon": { "Rise": "2021-09-23T21:19:00-03:00", "EpochRise": 1632442740, "Set": "2021-09-24T08:49:00-03:00", "EpochSet": 1632484140, "Phase": "WaningGibbous", "Age": 17 }, "Temperature": { "Minimum": { "Value": 15.9, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 26.0, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperature": { "Minimum": { "Value": 14.8, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 25.7, "Unit": "C", "UnitType": 17 } }, "RealFeelTemperatureShade": { "Minimum": { "Value": 14.8, "Unit": "C", "UnitType": 17 }, "Maximum": { "Value": 24.1, "Unit": "C", "UnitType": 17 } }, "HoursOfSun": 2.5, "DegreeDaySummary": { "Heating": { "Value": 0.0, "Unit": "C", "UnitType": 17 }, "Cooling": { "Value": 3.0, "Unit": "C", "UnitType": 17 } }, "AirAndPollen": [ { "Name": "AirQuality", "Value": 0, "Category": "Good", "CategoryValue": 1, "Type": "Ozone" }, { "Name": "Grass", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Mold", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Ragweed", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "Tree", "Value": 0, "Category": "Low", "CategoryValue": 1 }, { "Name": "UVIndex", "Value": 4, "Category": "Moderate", "CategoryValue": 2 } ], "Day": { "Icon": 4, "IconPhrase": "Intermittent clouds", "HasPrecipitation": false, "ShortPhrase": "Sun through high clouds", "LongPhrase": "Sun through high clouds", "PrecipitationProbability": 25, "ThunderstormProbability": 0, "RainProbability": 25, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 16.7, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 203, "Localized": "SSW", "English": "SSW" } }, "WindGust": { "Speed": { "Value": 24.1, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 203, "Localized": "SSW", "English": "SSW" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 90, "Evapotranspiration": { "Value": 0.1, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 38.4, "Unit": "W/m²", "UnitType": 33 } }, "Night": { "Icon": 34, "IconPhrase": "Mostly clear", "HasPrecipitation": false, "ShortPhrase": "Mainly clear", "LongPhrase": "Mainly clear", "PrecipitationProbability": 3, "ThunderstormProbability": 0, "RainProbability": 3, "SnowProbability": 0, "IceProbability": 0, "Wind": { "Speed": { "Value": 9.3, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 183, "Localized": "S", "English": "S" } }, "WindGust": { "Speed": { "Value": 18.5, "Unit": "km/h", "UnitType": 7 }, "Direction": { "Degrees": 182, "Localized": "S", "English": "S" } }, "TotalLiquid": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Rain": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "Snow": { "Value": 0.0, "Unit": "cm", "UnitType": 4 }, "Ice": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "HoursOfPrecipitation": 0.0, "HoursOfRain": 0.0, "HoursOfSnow": 0.0, "HoursOfIce": 0.0, "CloudCover": 53, "Evapotranspiration": { "Value": 0.0, "Unit": "mm", "UnitType": 3 }, "SolarIrradiance": { "Value": 1.0, "Unit": "W/m²", "UnitType": 33 } }, "Sources": [ "AccuWeather" ], "MobileLink": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=5&unit=c&lang=en-us", "Link": "http://www.accuweather.com/en/ar/clorinda/9243/daily-weather-forecast/9243?day=5&unit=c&lang=en-us" } ] }';