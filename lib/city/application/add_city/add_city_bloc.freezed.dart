// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddCityStateTearOff {
  const _$AddCityStateTearOff();

  _AddCityState call(
      {required bool isLoading,
      required List<AutocompleteModel> listOfCities}) {
    return _AddCityState(
      isLoading: isLoading,
      listOfCities: listOfCities,
    );
  }
}

/// @nodoc
const $AddCityState = _$AddCityStateTearOff();

/// @nodoc
mixin _$AddCityState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AutocompleteModel> get listOfCities =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCityStateCopyWith<AddCityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCityStateCopyWith<$Res> {
  factory $AddCityStateCopyWith(
          AddCityState value, $Res Function(AddCityState) then) =
      _$AddCityStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<AutocompleteModel> listOfCities});
}

/// @nodoc
class _$AddCityStateCopyWithImpl<$Res> implements $AddCityStateCopyWith<$Res> {
  _$AddCityStateCopyWithImpl(this._value, this._then);

  final AddCityState _value;
  // ignore: unused_field
  final $Res Function(AddCityState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOfCities = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfCities: listOfCities == freezed
          ? _value.listOfCities
          : listOfCities // ignore: cast_nullable_to_non_nullable
              as List<AutocompleteModel>,
    ));
  }
}

/// @nodoc
abstract class _$AddCityStateCopyWith<$Res>
    implements $AddCityStateCopyWith<$Res> {
  factory _$AddCityStateCopyWith(
          _AddCityState value, $Res Function(_AddCityState) then) =
      __$AddCityStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<AutocompleteModel> listOfCities});
}

/// @nodoc
class __$AddCityStateCopyWithImpl<$Res> extends _$AddCityStateCopyWithImpl<$Res>
    implements _$AddCityStateCopyWith<$Res> {
  __$AddCityStateCopyWithImpl(
      _AddCityState _value, $Res Function(_AddCityState) _then)
      : super(_value, (v) => _then(v as _AddCityState));

  @override
  _AddCityState get _value => super._value as _AddCityState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOfCities = freezed,
  }) {
    return _then(_AddCityState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfCities: listOfCities == freezed
          ? _value.listOfCities
          : listOfCities // ignore: cast_nullable_to_non_nullable
              as List<AutocompleteModel>,
    ));
  }
}

/// @nodoc

class _$_AddCityState with DiagnosticableTreeMixin implements _AddCityState {
  const _$_AddCityState({required this.isLoading, required this.listOfCities});

  @override
  final bool isLoading;
  @override
  final List<AutocompleteModel> listOfCities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCityState(isLoading: $isLoading, listOfCities: $listOfCities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCityState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('listOfCities', listOfCities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCityState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listOfCities, listOfCities) ||
                const DeepCollectionEquality()
                    .equals(other.listOfCities, listOfCities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listOfCities);

  @JsonKey(ignore: true)
  @override
  _$AddCityStateCopyWith<_AddCityState> get copyWith =>
      __$AddCityStateCopyWithImpl<_AddCityState>(this, _$identity);
}

abstract class _AddCityState implements AddCityState {
  const factory _AddCityState(
      {required bool isLoading,
      required List<AutocompleteModel> listOfCities}) = _$_AddCityState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<AutocompleteModel> get listOfCities =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddCityStateCopyWith<_AddCityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddCityEventTearOff {
  const _$AddCityEventTearOff();

  _GetListByQueryEvent getListByQuery(String q) {
    return _GetListByQueryEvent(
      q,
    );
  }

  _AddCityToList addCityToList(
      {required AutocompleteModel city, required bool isDefault}) {
    return _AddCityToList(
      city: city,
      isDefault: isDefault,
    );
  }
}

/// @nodoc
const $AddCityEvent = _$AddCityEventTearOff();

/// @nodoc
mixin _$AddCityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String q) getListByQuery,
    required TResult Function(AutocompleteModel city, bool isDefault)
        addCityToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q)? getListByQuery,
    TResult Function(AutocompleteModel city, bool isDefault)? addCityToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListByQueryEvent value) getListByQuery,
    required TResult Function(_AddCityToList value) addCityToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListByQueryEvent value)? getListByQuery,
    TResult Function(_AddCityToList value)? addCityToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCityEventCopyWith<$Res> {
  factory $AddCityEventCopyWith(
          AddCityEvent value, $Res Function(AddCityEvent) then) =
      _$AddCityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCityEventCopyWithImpl<$Res> implements $AddCityEventCopyWith<$Res> {
  _$AddCityEventCopyWithImpl(this._value, this._then);

  final AddCityEvent _value;
  // ignore: unused_field
  final $Res Function(AddCityEvent) _then;
}

/// @nodoc
abstract class _$GetListByQueryEventCopyWith<$Res> {
  factory _$GetListByQueryEventCopyWith(_GetListByQueryEvent value,
          $Res Function(_GetListByQueryEvent) then) =
      __$GetListByQueryEventCopyWithImpl<$Res>;
  $Res call({String q});
}

/// @nodoc
class __$GetListByQueryEventCopyWithImpl<$Res>
    extends _$AddCityEventCopyWithImpl<$Res>
    implements _$GetListByQueryEventCopyWith<$Res> {
  __$GetListByQueryEventCopyWithImpl(
      _GetListByQueryEvent _value, $Res Function(_GetListByQueryEvent) _then)
      : super(_value, (v) => _then(v as _GetListByQueryEvent));

  @override
  _GetListByQueryEvent get _value => super._value as _GetListByQueryEvent;

  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_GetListByQueryEvent(
      q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetListByQueryEvent
    with DiagnosticableTreeMixin
    implements _GetListByQueryEvent {
  const _$_GetListByQueryEvent(this.q);

  @override
  final String q;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCityEvent.getListByQuery(q: $q)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCityEvent.getListByQuery'))
      ..add(DiagnosticsProperty('q', q));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListByQueryEvent &&
            (identical(other.q, q) ||
                const DeepCollectionEquality().equals(other.q, q)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(q);

  @JsonKey(ignore: true)
  @override
  _$GetListByQueryEventCopyWith<_GetListByQueryEvent> get copyWith =>
      __$GetListByQueryEventCopyWithImpl<_GetListByQueryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String q) getListByQuery,
    required TResult Function(AutocompleteModel city, bool isDefault)
        addCityToList,
  }) {
    return getListByQuery(q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q)? getListByQuery,
    TResult Function(AutocompleteModel city, bool isDefault)? addCityToList,
    required TResult orElse(),
  }) {
    if (getListByQuery != null) {
      return getListByQuery(q);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListByQueryEvent value) getListByQuery,
    required TResult Function(_AddCityToList value) addCityToList,
  }) {
    return getListByQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListByQueryEvent value)? getListByQuery,
    TResult Function(_AddCityToList value)? addCityToList,
    required TResult orElse(),
  }) {
    if (getListByQuery != null) {
      return getListByQuery(this);
    }
    return orElse();
  }
}

abstract class _GetListByQueryEvent implements AddCityEvent {
  const factory _GetListByQueryEvent(String q) = _$_GetListByQueryEvent;

  String get q => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetListByQueryEventCopyWith<_GetListByQueryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCityToListCopyWith<$Res> {
  factory _$AddCityToListCopyWith(
          _AddCityToList value, $Res Function(_AddCityToList) then) =
      __$AddCityToListCopyWithImpl<$Res>;
  $Res call({AutocompleteModel city, bool isDefault});
}

/// @nodoc
class __$AddCityToListCopyWithImpl<$Res>
    extends _$AddCityEventCopyWithImpl<$Res>
    implements _$AddCityToListCopyWith<$Res> {
  __$AddCityToListCopyWithImpl(
      _AddCityToList _value, $Res Function(_AddCityToList) _then)
      : super(_value, (v) => _then(v as _AddCityToList));

  @override
  _AddCityToList get _value => super._value as _AddCityToList;

  @override
  $Res call({
    Object? city = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_AddCityToList(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as AutocompleteModel,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCityToList with DiagnosticableTreeMixin implements _AddCityToList {
  const _$_AddCityToList({required this.city, required this.isDefault});

  @override
  final AutocompleteModel city;
  @override
  final bool isDefault;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddCityEvent.addCityToList(city: $city, isDefault: $isDefault)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddCityEvent.addCityToList'))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('isDefault', isDefault));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCityToList &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality()
                    .equals(other.isDefault, isDefault)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(isDefault);

  @JsonKey(ignore: true)
  @override
  _$AddCityToListCopyWith<_AddCityToList> get copyWith =>
      __$AddCityToListCopyWithImpl<_AddCityToList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String q) getListByQuery,
    required TResult Function(AutocompleteModel city, bool isDefault)
        addCityToList,
  }) {
    return addCityToList(city, isDefault);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String q)? getListByQuery,
    TResult Function(AutocompleteModel city, bool isDefault)? addCityToList,
    required TResult orElse(),
  }) {
    if (addCityToList != null) {
      return addCityToList(city, isDefault);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListByQueryEvent value) getListByQuery,
    required TResult Function(_AddCityToList value) addCityToList,
  }) {
    return addCityToList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListByQueryEvent value)? getListByQuery,
    TResult Function(_AddCityToList value)? addCityToList,
    required TResult orElse(),
  }) {
    if (addCityToList != null) {
      return addCityToList(this);
    }
    return orElse();
  }
}

abstract class _AddCityToList implements AddCityEvent {
  const factory _AddCityToList(
      {required AutocompleteModel city,
      required bool isDefault}) = _$_AddCityToList;

  AutocompleteModel get city => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCityToListCopyWith<_AddCityToList> get copyWith =>
      throw _privateConstructorUsedError;
}
