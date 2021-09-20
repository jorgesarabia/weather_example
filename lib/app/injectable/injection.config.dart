// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i3;

import '../../city/application/add_city/add_city_bloc.dart' as _i7;
import '../../city/application/cities_bloc/cities_bloc.dart' as _i8;
import '../../city/domain/i_city_facade.dart' as _i4;
import '../../city/infrastructure/city_repository.dart' as _i5;
import '../infrastructure/network_service.dart' as _i6;
import 'injectable_modules.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  await gh.factoryAsync<_i3.Database>(() => injectableModule.database,
      preResolve: true);
  gh.lazySingleton<_i4.ICityFacade>(() => _i5.CityRepository(
      db: get<_i3.Database>(), networkService: get<_i6.NetworkService>()));
  gh.factory<_i7.AddCityBloc>(
      () => _i7.AddCityBloc(iCityFacade: get<_i4.ICityFacade>()));
  gh.factory<_i8.CitiesBloc>(
      () => _i8.CitiesBloc(iCityFacade: get<_i4.ICityFacade>()));
  gh.singleton<_i6.NetworkService>(_i6.NetworkService());
  return get;
}

class _$InjectableModule extends _i9.InjectableModule {}
