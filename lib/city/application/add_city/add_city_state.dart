part of 'add_city_bloc.dart';

@freezed
class AddCityState with _$AddCityState {
  const factory AddCityState({
    required bool isLoading,
    required BasicError basicError,
    required List<AutocompleteModel> listOfCities,
  }) = _AddCityState;

  factory AddCityState.initial() {
    return AddCityState(
      isLoading: false,
      basicError: BasicError.empty(),
      listOfCities: [],
    );
  }
}
