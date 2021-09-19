part of 'add_city_bloc.dart';

@freezed
class AddCityState with _$AddCityState {
  const factory AddCityState({
    required bool isLoading,
    required List<AutocompleteModel> listOfCities,
  }) = _AddCityState;

  factory AddCityState.initial() {
    return const AddCityState(
      isLoading: true,
      listOfCities: [],
    );
  }
}
