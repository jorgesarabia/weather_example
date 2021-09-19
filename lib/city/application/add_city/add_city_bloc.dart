import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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

    yield state.copyWith(isLoading: true);

    final cities = await iCityFacade.searchList(q: event.q);

    yield state.copyWith(
      isLoading: false,
      listOfCities: cities,
    );
  }

  Stream<AddCityState> _mapAddCityToListEventToState(_AddCityToList event) async* {}
}
