part of 'add_city_bloc.dart';

@freezed
class AddCityEvent with _$AddCityEvent {
  const factory AddCityEvent.getListByQuery(q) = _GetListByQueryEvent;
  const factory AddCityEvent.addCityToList({
    required AutocompleteModel city,
    required bool isDefault,
  }) = _AddCityToList;
}
