import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_example/app/domain/basic_error.dart';
import 'package:weather_example/city/domain/i_city_facade.dart';
import 'package:weather_example/weather/domain/autocomplete_model.dart';

part 'add_city_state.dart';
part 'add_city_event.dart';
part 'add_city_bloc.freezed.dart';

@injectable
class AddCityBloc extends Bloc<AddCityEvent, AddCityState> {
  AddCityBloc({
    required this.iCityFacade,
  }) : super(AddCityState.initial());

  final ICityFacade iCityFacade;

  @override
  Stream<AddCityState> mapEventToState(AddCityEvent event) async* {
    yield* event.map(
      addCityToList: _mapAddCityToListEventToState,
      getListByQuery: _mapGetListByQueryEventToState,
    );
  }

  Stream<AddCityState> _mapGetListByQueryEventToState(_GetListByQueryEvent event) async* {
    if (state.isLoading) {
      return;
    }

    if (event.q.isEmpty) {
      yield state.copyWith(
        isLoading: false,
        listOfCities: [],
      );
    } else {
      yield state.copyWith(
        isLoading: true,
        basicError: BasicError.empty(),
      );
      final cities = await iCityFacade.searchList(q: event.q);

      yield state.copyWith(
        isLoading: false,
        listOfCities: cities,
      );
    }
  }

  Stream<AddCityState> _mapAddCityToListEventToState(_AddCityToList event) async* {
    yield state.copyWith(
      isLoading: true,
      basicError: BasicError.empty(),
    );

    final addCity = await iCityFacade.addCity(isDefault: event.isDefault, city: event.city);

    yield* addCity.fold(
      (l) async* {
        yield state.copyWith(
          isLoading: false,
          basicError: l,
        );
      },
      (r) async* {
        yield state.copyWith(
          isLoading: false,
          newCityWasAdded: r,
        );
      },
    );
  }

  List<AutocompleteModel> _mockListOfCities() {
    return AutocompleteModel.listFromJson(jsonDecode(value));
  }
}

const value =
    '[ { "Version": 1, "Key": "342227", "Type": "City", "Rank": 45, "LocalizedName": "Clovis", "Country": { "ID": "US", "LocalizedName": "United States" }, "AdministrativeArea": { "ID": "CA", "LocalizedName": "California" } }, { "Version": 1, "Key": "169958", "Type": "City", "Rank": 53, "LocalizedName": "Cloppenburg", "Country": { "ID": "DE", "LocalizedName": "Germany" }, "AdministrativeArea": { "ID": "NI", "LocalizedName": "Lower Saxony" } }, { "Version": 1, "Key": "9243", "Type": "City", "Rank": 55, "LocalizedName": "Clorinda", "Country": { "ID": "AR", "LocalizedName": "Argentina" }, "AdministrativeArea": { "ID": "P", "LocalizedName": "Formosa" } }, { "Version": 1, "Key": "207935", "Type": "City", "Rank": 55, "LocalizedName": "Clondalkin", "Country": { "ID": "IE", "LocalizedName": "Ireland" }, "AdministrativeArea": { "ID": "D", "LocalizedName": "County Dublin" } }, { "Version": 1, "Key": "329555", "Type": "City", "Rank": 55, "LocalizedName": "Clovis", "Country": { "ID": "US", "LocalizedName": "United States" }, "AdministrativeArea": { "ID": "NM", "LocalizedName": "New Mexico" } }, { "Version": 1, "Key": "330465", "Type": "City", "Rank": 65, "LocalizedName": "Clock Face", "Country": { "ID": "GB", "LocalizedName": "United Kingdom" }, "AdministrativeArea": { "ID": "SHN", "LocalizedName": "St. Helens" } }, { "Version": 1, "Key": "3523293", "Type": "City", "Rank": 65, "LocalizedName": "Clonskeagh", "Country": { "ID": "IE", "LocalizedName": "Ireland" }, "AdministrativeArea": { "ID": "D", "LocalizedName": "County Dublin" } }, { "Version": 1, "Key": "207882", "Type": "City", "Rank": 65, "LocalizedName": "Clontarf", "Country": { "ID": "IE", "LocalizedName": "Ireland" }, "AdministrativeArea": { "ID": "D", "LocalizedName": "County Dublin" } }, { "Version": 1, "Key": "3554321", "Type": "City", "Rank": 65, "LocalizedName": "Clontarf East", "Country": { "ID": "IE", "LocalizedName": "Ireland" }, "AdministrativeArea": { "ID": "D", "LocalizedName": "County Dublin" } }, { "Version": 1, "Key": "211368", "Type": "City", "Rank": 65, "LocalizedName": "Clonmel", "Country": { "ID": "IE", "LocalizedName": "Ireland" }, "AdministrativeArea": { "ID": "TA", "LocalizedName": "County Tipperary" } } ]';
