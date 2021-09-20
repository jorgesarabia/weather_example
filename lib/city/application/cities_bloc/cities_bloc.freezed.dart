// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CitiesStateTearOff {
  const _$CitiesStateTearOff();

  _CitiesState call(
      {required bool isLoading,
      required bool hasDefaultCity,
      required CityModel defaultCity}) {
    return _CitiesState(
      isLoading: isLoading,
      hasDefaultCity: hasDefaultCity,
      defaultCity: defaultCity,
    );
  }
}

/// @nodoc
const $CitiesState = _$CitiesStateTearOff();

/// @nodoc
mixin _$CitiesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasDefaultCity => throw _privateConstructorUsedError;
  CityModel get defaultCity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitiesStateCopyWith<CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool hasDefaultCity, CityModel defaultCity});
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res> implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  final CitiesState _value;
  // ignore: unused_field
  final $Res Function(CitiesState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasDefaultCity = freezed,
    Object? defaultCity = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDefaultCity: hasDefaultCity == freezed
          ? _value.hasDefaultCity
          : hasDefaultCity // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultCity: defaultCity == freezed
          ? _value.defaultCity
          : defaultCity // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }
}

/// @nodoc
abstract class _$CitiesStateCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$CitiesStateCopyWith(
          _CitiesState value, $Res Function(_CitiesState) then) =
      __$CitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool hasDefaultCity, CityModel defaultCity});
}

/// @nodoc
class __$CitiesStateCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements _$CitiesStateCopyWith<$Res> {
  __$CitiesStateCopyWithImpl(
      _CitiesState _value, $Res Function(_CitiesState) _then)
      : super(_value, (v) => _then(v as _CitiesState));

  @override
  _CitiesState get _value => super._value as _CitiesState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasDefaultCity = freezed,
    Object? defaultCity = freezed,
  }) {
    return _then(_CitiesState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDefaultCity: hasDefaultCity == freezed
          ? _value.hasDefaultCity
          : hasDefaultCity // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultCity: defaultCity == freezed
          ? _value.defaultCity
          : defaultCity // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }
}

/// @nodoc

class _$_CitiesState implements _CitiesState {
  const _$_CitiesState(
      {required this.isLoading,
      required this.hasDefaultCity,
      required this.defaultCity});

  @override
  final bool isLoading;
  @override
  final bool hasDefaultCity;
  @override
  final CityModel defaultCity;

  @override
  String toString() {
    return 'CitiesState(isLoading: $isLoading, hasDefaultCity: $hasDefaultCity, defaultCity: $defaultCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasDefaultCity, hasDefaultCity) ||
                const DeepCollectionEquality()
                    .equals(other.hasDefaultCity, hasDefaultCity)) &&
            (identical(other.defaultCity, defaultCity) ||
                const DeepCollectionEquality()
                    .equals(other.defaultCity, defaultCity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasDefaultCity) ^
      const DeepCollectionEquality().hash(defaultCity);

  @JsonKey(ignore: true)
  @override
  _$CitiesStateCopyWith<_CitiesState> get copyWith =>
      __$CitiesStateCopyWithImpl<_CitiesState>(this, _$identity);
}

abstract class _CitiesState implements CitiesState {
  const factory _CitiesState(
      {required bool isLoading,
      required bool hasDefaultCity,
      required CityModel defaultCity}) = _$_CitiesState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get hasDefaultCity => throw _privateConstructorUsedError;
  @override
  CityModel get defaultCity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CitiesStateCopyWith<_CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CitiesEventTearOff {
  const _$CitiesEventTearOff();

  _GetDefaultCity getDefaultCity() {
    return const _GetDefaultCity();
  }
}

/// @nodoc
const $CitiesEvent = _$CitiesEventTearOff();

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDefaultCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDefaultCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDefaultCity value) getDefaultCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDefaultCity value)? getDefaultCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res> implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  final CitiesEvent _value;
  // ignore: unused_field
  final $Res Function(CitiesEvent) _then;
}

/// @nodoc
abstract class _$GetDefaultCityCopyWith<$Res> {
  factory _$GetDefaultCityCopyWith(
          _GetDefaultCity value, $Res Function(_GetDefaultCity) then) =
      __$GetDefaultCityCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDefaultCityCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements _$GetDefaultCityCopyWith<$Res> {
  __$GetDefaultCityCopyWithImpl(
      _GetDefaultCity _value, $Res Function(_GetDefaultCity) _then)
      : super(_value, (v) => _then(v as _GetDefaultCity));

  @override
  _GetDefaultCity get _value => super._value as _GetDefaultCity;
}

/// @nodoc

class _$_GetDefaultCity implements _GetDefaultCity {
  const _$_GetDefaultCity();

  @override
  String toString() {
    return 'CitiesEvent.getDefaultCity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDefaultCity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDefaultCity,
  }) {
    return getDefaultCity();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDefaultCity,
    required TResult orElse(),
  }) {
    if (getDefaultCity != null) {
      return getDefaultCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDefaultCity value) getDefaultCity,
  }) {
    return getDefaultCity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDefaultCity value)? getDefaultCity,
    required TResult orElse(),
  }) {
    if (getDefaultCity != null) {
      return getDefaultCity(this);
    }
    return orElse();
  }
}

abstract class _GetDefaultCity implements CitiesEvent {
  const factory _GetDefaultCity() = _$_GetDefaultCity;
}
