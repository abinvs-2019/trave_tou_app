// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    TResult? Function(TripCreateModel? model)? createTrip,
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
    TResult? Function(_CreateTrip value)? createTrip,
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
      _$TripEventCopyWithImpl<$Res, TripEvent>;
  @useResult
  $Res call({TripCreateModel? model});

  $TripCreateModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res, $Val extends TripEvent>
    implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TripCreateModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripCreateModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $TripCreateModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
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
  @useResult
  $Res call({TripCreateModel? model});

  @override
  $TripCreateModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_CreateTripCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$_CreateTrip>
    implements _$$_CreateTripCopyWith<$Res> {
  __$$_CreateTripCopyWithImpl(
      _$_CreateTrip _value, $Res Function(_$_CreateTrip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_CreateTrip(
      model: freezed == model
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
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function(TripCreateModel? model)? createTrip,
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
    TResult? Function(_CreateTrip value)? createTrip,
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
      _$TripStateCopyWithImpl<$Res, TripState>;
  @useResult
  $Res call({bool isLoading, bool? isAdded});
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res, $Val extends TripState>
    implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAdded = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: freezed == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripStateCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$$_TripStateCopyWith(
          _$_TripState value, $Res Function(_$_TripState) then) =
      __$$_TripStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool? isAdded});
}

/// @nodoc
class __$$_TripStateCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$_TripState>
    implements _$$_TripStateCopyWith<$Res> {
  __$$_TripStateCopyWithImpl(
      _$_TripState _value, $Res Function(_$_TripState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAdded = freezed,
  }) {
    return _then(_$_TripState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: freezed == isAdded
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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
