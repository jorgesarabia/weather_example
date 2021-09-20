// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {required bool isLoading,
      required CurrentConditions? currentConditions,
      required FiveDays? fiveDays,
      required CityModel cityModel}) {
    return _WeatherState(
      isLoading: isLoading,
      currentConditions: currentConditions,
      fiveDays: fiveDays,
      cityModel: cityModel,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  bool get isLoading => throw _privateConstructorUsedError;
  CurrentConditions? get currentConditions =>
      throw _privateConstructorUsedError;
  FiveDays? get fiveDays => throw _privateConstructorUsedError;
  CityModel get cityModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      CurrentConditions? currentConditions,
      FiveDays? fiveDays,
      CityModel cityModel});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentConditions = freezed,
    Object? fiveDays = freezed,
    Object? cityModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentConditions: currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as CurrentConditions?,
      fiveDays: fiveDays == freezed
          ? _value.fiveDays
          : fiveDays // ignore: cast_nullable_to_non_nullable
              as FiveDays?,
      cityModel: cityModel == freezed
          ? _value.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      CurrentConditions? currentConditions,
      FiveDays? fiveDays,
      CityModel cityModel});
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentConditions = freezed,
    Object? fiveDays = freezed,
    Object? cityModel = freezed,
  }) {
    return _then(_WeatherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentConditions: currentConditions == freezed
          ? _value.currentConditions
          : currentConditions // ignore: cast_nullable_to_non_nullable
              as CurrentConditions?,
      fiveDays: fiveDays == freezed
          ? _value.fiveDays
          : fiveDays // ignore: cast_nullable_to_non_nullable
              as FiveDays?,
      cityModel: cityModel == freezed
          ? _value.cityModel
          : cityModel // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {required this.isLoading,
      required this.currentConditions,
      required this.fiveDays,
      required this.cityModel});

  @override
  final bool isLoading;
  @override
  final CurrentConditions? currentConditions;
  @override
  final FiveDays? fiveDays;
  @override
  final CityModel cityModel;

  @override
  String toString() {
    return 'WeatherState(isLoading: $isLoading, currentConditions: $currentConditions, fiveDays: $fiveDays, cityModel: $cityModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentConditions, currentConditions) ||
                const DeepCollectionEquality()
                    .equals(other.currentConditions, currentConditions)) &&
            (identical(other.fiveDays, fiveDays) ||
                const DeepCollectionEquality()
                    .equals(other.fiveDays, fiveDays)) &&
            (identical(other.cityModel, cityModel) ||
                const DeepCollectionEquality()
                    .equals(other.cityModel, cityModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentConditions) ^
      const DeepCollectionEquality().hash(fiveDays) ^
      const DeepCollectionEquality().hash(cityModel);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {required bool isLoading,
      required CurrentConditions? currentConditions,
      required FiveDays? fiveDays,
      required CityModel cityModel}) = _$_WeatherState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  CurrentConditions? get currentConditions =>
      throw _privateConstructorUsedError;
  @override
  FiveDays? get fiveDays => throw _privateConstructorUsedError;
  @override
  CityModel get cityModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  _GetCurrentCondition getCurrentCondition(int cityKey) {
    return _GetCurrentCondition(
      cityKey,
    );
  }

  _GetFiveDaysCondition getFiveDays(int cityKey) {
    return _GetFiveDaysCondition(
      cityKey,
    );
  }

  _SetFromLocal setFromLocal(CityModel city) {
    return _SetFromLocal(
      city,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityKey) getCurrentCondition,
    required TResult Function(int cityKey) getFiveDays,
    required TResult Function(CityModel city) setFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityKey)? getCurrentCondition,
    TResult Function(int cityKey)? getFiveDays,
    TResult Function(CityModel city)? setFromLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCondition value) getCurrentCondition,
    required TResult Function(_GetFiveDaysCondition value) getFiveDays,
    required TResult Function(_SetFromLocal value) setFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCondition value)? getCurrentCondition,
    TResult Function(_GetFiveDaysCondition value)? getFiveDays,
    TResult Function(_SetFromLocal value)? setFromLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$GetCurrentConditionCopyWith<$Res> {
  factory _$GetCurrentConditionCopyWith(_GetCurrentCondition value,
          $Res Function(_GetCurrentCondition) then) =
      __$GetCurrentConditionCopyWithImpl<$Res>;
  $Res call({int cityKey});
}

/// @nodoc
class __$GetCurrentConditionCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$GetCurrentConditionCopyWith<$Res> {
  __$GetCurrentConditionCopyWithImpl(
      _GetCurrentCondition _value, $Res Function(_GetCurrentCondition) _then)
      : super(_value, (v) => _then(v as _GetCurrentCondition));

  @override
  _GetCurrentCondition get _value => super._value as _GetCurrentCondition;

  @override
  $Res call({
    Object? cityKey = freezed,
  }) {
    return _then(_GetCurrentCondition(
      cityKey == freezed
          ? _value.cityKey
          : cityKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCurrentCondition implements _GetCurrentCondition {
  const _$_GetCurrentCondition(this.cityKey);

  @override
  final int cityKey;

  @override
  String toString() {
    return 'WeatherEvent.getCurrentCondition(cityKey: $cityKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCurrentCondition &&
            (identical(other.cityKey, cityKey) ||
                const DeepCollectionEquality().equals(other.cityKey, cityKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityKey);

  @JsonKey(ignore: true)
  @override
  _$GetCurrentConditionCopyWith<_GetCurrentCondition> get copyWith =>
      __$GetCurrentConditionCopyWithImpl<_GetCurrentCondition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityKey) getCurrentCondition,
    required TResult Function(int cityKey) getFiveDays,
    required TResult Function(CityModel city) setFromLocal,
  }) {
    return getCurrentCondition(cityKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityKey)? getCurrentCondition,
    TResult Function(int cityKey)? getFiveDays,
    TResult Function(CityModel city)? setFromLocal,
    required TResult orElse(),
  }) {
    if (getCurrentCondition != null) {
      return getCurrentCondition(cityKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCondition value) getCurrentCondition,
    required TResult Function(_GetFiveDaysCondition value) getFiveDays,
    required TResult Function(_SetFromLocal value) setFromLocal,
  }) {
    return getCurrentCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCondition value)? getCurrentCondition,
    TResult Function(_GetFiveDaysCondition value)? getFiveDays,
    TResult Function(_SetFromLocal value)? setFromLocal,
    required TResult orElse(),
  }) {
    if (getCurrentCondition != null) {
      return getCurrentCondition(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentCondition implements WeatherEvent {
  const factory _GetCurrentCondition(int cityKey) = _$_GetCurrentCondition;

  int get cityKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCurrentConditionCopyWith<_GetCurrentCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetFiveDaysConditionCopyWith<$Res> {
  factory _$GetFiveDaysConditionCopyWith(_GetFiveDaysCondition value,
          $Res Function(_GetFiveDaysCondition) then) =
      __$GetFiveDaysConditionCopyWithImpl<$Res>;
  $Res call({int cityKey});
}

/// @nodoc
class __$GetFiveDaysConditionCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$GetFiveDaysConditionCopyWith<$Res> {
  __$GetFiveDaysConditionCopyWithImpl(
      _GetFiveDaysCondition _value, $Res Function(_GetFiveDaysCondition) _then)
      : super(_value, (v) => _then(v as _GetFiveDaysCondition));

  @override
  _GetFiveDaysCondition get _value => super._value as _GetFiveDaysCondition;

  @override
  $Res call({
    Object? cityKey = freezed,
  }) {
    return _then(_GetFiveDaysCondition(
      cityKey == freezed
          ? _value.cityKey
          : cityKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetFiveDaysCondition implements _GetFiveDaysCondition {
  const _$_GetFiveDaysCondition(this.cityKey);

  @override
  final int cityKey;

  @override
  String toString() {
    return 'WeatherEvent.getFiveDays(cityKey: $cityKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetFiveDaysCondition &&
            (identical(other.cityKey, cityKey) ||
                const DeepCollectionEquality().equals(other.cityKey, cityKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityKey);

  @JsonKey(ignore: true)
  @override
  _$GetFiveDaysConditionCopyWith<_GetFiveDaysCondition> get copyWith =>
      __$GetFiveDaysConditionCopyWithImpl<_GetFiveDaysCondition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityKey) getCurrentCondition,
    required TResult Function(int cityKey) getFiveDays,
    required TResult Function(CityModel city) setFromLocal,
  }) {
    return getFiveDays(cityKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityKey)? getCurrentCondition,
    TResult Function(int cityKey)? getFiveDays,
    TResult Function(CityModel city)? setFromLocal,
    required TResult orElse(),
  }) {
    if (getFiveDays != null) {
      return getFiveDays(cityKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCondition value) getCurrentCondition,
    required TResult Function(_GetFiveDaysCondition value) getFiveDays,
    required TResult Function(_SetFromLocal value) setFromLocal,
  }) {
    return getFiveDays(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCondition value)? getCurrentCondition,
    TResult Function(_GetFiveDaysCondition value)? getFiveDays,
    TResult Function(_SetFromLocal value)? setFromLocal,
    required TResult orElse(),
  }) {
    if (getFiveDays != null) {
      return getFiveDays(this);
    }
    return orElse();
  }
}

abstract class _GetFiveDaysCondition implements WeatherEvent {
  const factory _GetFiveDaysCondition(int cityKey) = _$_GetFiveDaysCondition;

  int get cityKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetFiveDaysConditionCopyWith<_GetFiveDaysCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetFromLocalCopyWith<$Res> {
  factory _$SetFromLocalCopyWith(
          _SetFromLocal value, $Res Function(_SetFromLocal) then) =
      __$SetFromLocalCopyWithImpl<$Res>;
  $Res call({CityModel city});
}

/// @nodoc
class __$SetFromLocalCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$SetFromLocalCopyWith<$Res> {
  __$SetFromLocalCopyWithImpl(
      _SetFromLocal _value, $Res Function(_SetFromLocal) _then)
      : super(_value, (v) => _then(v as _SetFromLocal));

  @override
  _SetFromLocal get _value => super._value as _SetFromLocal;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_SetFromLocal(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel,
    ));
  }
}

/// @nodoc

class _$_SetFromLocal implements _SetFromLocal {
  const _$_SetFromLocal(this.city);

  @override
  final CityModel city;

  @override
  String toString() {
    return 'WeatherEvent.setFromLocal(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetFromLocal &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$SetFromLocalCopyWith<_SetFromLocal> get copyWith =>
      __$SetFromLocalCopyWithImpl<_SetFromLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityKey) getCurrentCondition,
    required TResult Function(int cityKey) getFiveDays,
    required TResult Function(CityModel city) setFromLocal,
  }) {
    return setFromLocal(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityKey)? getCurrentCondition,
    TResult Function(int cityKey)? getFiveDays,
    TResult Function(CityModel city)? setFromLocal,
    required TResult orElse(),
  }) {
    if (setFromLocal != null) {
      return setFromLocal(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentCondition value) getCurrentCondition,
    required TResult Function(_GetFiveDaysCondition value) getFiveDays,
    required TResult Function(_SetFromLocal value) setFromLocal,
  }) {
    return setFromLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentCondition value)? getCurrentCondition,
    TResult Function(_GetFiveDaysCondition value)? getFiveDays,
    TResult Function(_SetFromLocal value)? setFromLocal,
    required TResult orElse(),
  }) {
    if (setFromLocal != null) {
      return setFromLocal(this);
    }
    return orElse();
  }
}

abstract class _SetFromLocal implements WeatherEvent {
  const factory _SetFromLocal(CityModel city) = _$_SetFromLocal;

  CityModel get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetFromLocalCopyWith<_SetFromLocal> get copyWith =>
      throw _privateConstructorUsedError;
}
