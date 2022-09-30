// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripEvent {
  TripCreateModel? get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TripCreateModel? model) createTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TripCreateModel? model)? createTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TripCreateModel? model)? createTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTrip value) createTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTrip value)? createTrip,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTrip value)? createTrip,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripEventCopyWith<TripEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res>;
  $Res call({TripCreateModel? model});

  $TripCreateModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res> implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  final TripEvent _value;
  // ignore: unused_field
  final $Res Function(TripEvent) _then;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TripCreateModel?,
    ));
  }

  @override
  $TripCreateModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $TripCreateModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateTripCopyWith<$Res>
    implements $TripEventCopyWith<$Res> {
  factory _$$_CreateTripCopyWith(
          _$_CreateTrip value, $Res Function(_$_CreateTrip) then) =
      __$$_CreateTripCopyWithImpl<$Res>;
  @override
  $Res call({TripCreateModel? model});

  @override
  $TripCreateModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_CreateTripCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$$_CreateTripCopyWith<$Res> {
  __$$_CreateTripCopyWithImpl(
      _$_CreateTrip _value, $Res Function(_$_CreateTrip) _then)
      : super(_value, (v) => _then(v as _$_CreateTrip));

  @override
  _$_CreateTrip get _value => super._value as _$_CreateTrip;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_CreateTrip(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TripCreateModel?,
    ));
  }
}

/// @nodoc

class _$_CreateTrip implements _CreateTrip {
  const _$_CreateTrip({this.model});

  @override
  final TripCreateModel? model;

  @override
  String toString() {
    return 'TripEvent.createTrip(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTrip &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_CreateTripCopyWith<_$_CreateTrip> get copyWith =>
      __$$_CreateTripCopyWithImpl<_$_CreateTrip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TripCreateModel? model) createTrip,
  }) {
    return createTrip(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TripCreateModel? model)? createTrip,
  }) {
    return createTrip?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TripCreateModel? model)? createTrip,
    required TResult orElse(),
  }) {
    if (createTrip != null) {
      return createTrip(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTrip value) createTrip,
  }) {
    return createTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateTrip value)? createTrip,
  }) {
    return createTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTrip value)? createTrip,
    required TResult orElse(),
  }) {
    if (createTrip != null) {
      return createTrip(this);
    }
    return orElse();
  }
}

abstract class _CreateTrip implements TripEvent {
  const factory _CreateTrip({final TripCreateModel? model}) = _$_CreateTrip;

  @override
  TripCreateModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTripCopyWith<_$_CreateTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool? get isAdded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool? isAdded});
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res> implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  final TripState _value;
  // ignore: unused_field
  final $Res Function(TripState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAdded = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: isAdded == freezed
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_TripStateCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$_TripStateCopyWith(
          _$_TripState value, $Res Function(_$_TripState) then) =
      __$$_TripStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool? isAdded});
}

/// @nodoc
class __$$_TripStateCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
    implements _$$_TripStateCopyWith<$Res> {
  __$$_TripStateCopyWithImpl(
      _$_TripState _value, $Res Function(_$_TripState) _then)
      : super(_value, (v) => _then(v as _$_TripState));

  @override
  _$_TripState get _value => super._value as _$_TripState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isAdded = freezed,
  }) {
    return _then(_$_TripState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: isAdded == freezed
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TripState implements _TripState {
  _$_TripState({required this.isLoading, this.isAdded});

  @override
  final bool isLoading;
  @override
  final bool? isAdded;

  @override
  String toString() {
    return 'TripState(isLoading: $isLoading, isAdded: $isAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isAdded, isAdded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isAdded));

  @JsonKey(ignore: true)
  @override
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      __$$_TripStateCopyWithImpl<_$_TripState>(this, _$identity);
}

abstract class _TripState implements TripState {
  factory _TripState({required final bool isLoading, final bool? isAdded}) =
      _$_TripState;

  @override
  bool get isLoading;
  @override
  bool? get isAdded;
  @override
  @JsonKey(ignore: true)
  _$$_TripStateCopyWith<_$_TripState> get copyWith =>
      throw _privateConstructorUsedError;
}
