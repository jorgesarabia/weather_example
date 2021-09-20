import 'package:dartz/dartz.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/weather/domain/current_condition.dart';

abstract class IWeatherFacade {
  Future<Either<BasicError, CurrentConditions>> getCurrentCondition({required int cityId});
  Future<void> getFiveDays({required int cityId});
}
