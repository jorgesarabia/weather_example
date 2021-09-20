import 'package:dartz/dartz.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/weather/domain/current_condition.dart';
import 'package:weather_example/weather/domain/five_days.dart';

abstract class IWeatherFacade {
  Future<Either<BasicError, CurrentConditions>> getCurrentCondition({required int cityId});
  Future<Either<BasicError, FiveDays>> getFiveDays({required int cityId});
}
