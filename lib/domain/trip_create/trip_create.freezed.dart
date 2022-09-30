// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripCreateModel _$TripCreateModelFromJson(Map<String, dynamic> json) {
  return _TripCreateModel.fromJson(json);
}

/// @nodoc
mixin _$TripCreateModel {
  String get name => throw _privateConstructorUsedError;
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  String get expense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCreateModelCopyWith<TripCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCreateModelCopyWith<$Res> {
  factory $TripCreateModelCopyWith(
          TripCreateModel value, $Res Function(TripCreateModel) then) =
      _$TripCreateModelCopyWithImpl<$Res>;
  $Res call({String name, String fromDate, String toDate, String expense});
}

/// @nodoc
class _$TripCreateModelCopyWithImpl<$Res>
    implements $TripCreateModelCopyWith<$Res> {
  _$TripCreateModelCopyWithImpl(this._value, this._then);

  final TripCreateModel _value;
  // ignore: unused_field
  final $Res Function(TripCreateModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? expense = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TripCreateModelCopyWith<$Res>
    implements $TripCreateModelCopyWith<$Res> {
  factory _$$_TripCreateModelCopyWith(
          _$_TripCreateModel value, $Res Function(_$_TripCreateModel) then) =
      __$$_TripCreateModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String fromDate, String toDate, String expense});
}

/// @nodoc
class __$$_TripCreateModelCopyWithImpl<$Res>
    extends _$TripCreateModelCopyWithImpl<$Res>
    implements _$$_TripCreateModelCopyWith<$Res> {
  __$$_TripCreateModelCopyWithImpl(
      _$_TripCreateModel _value, $Res Function(_$_TripCreateModel) _then)
      : super(_value, (v) => _then(v as _$_TripCreateModel));

  @override
  _$_TripCreateModel get _value => super._value as _$_TripCreateModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? expense = freezed,
  }) {
    return _then(_$_TripCreateModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripCreateModel implements _TripCreateModel {
  const _$_TripCreateModel(
      {required this.name,
      required this.fromDate,
      required this.toDate,
      required this.expense});

  factory _$_TripCreateModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripCreateModelFromJson(json);

  @override
  final String name;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String expense;

  @override
  String toString() {
    return 'TripCreateModel(name: $name, fromDate: $fromDate, toDate: $toDate, expense: $expense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripCreateModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate) &&
            const DeepCollectionEquality().equals(other.expense, expense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fromDate),
      const DeepCollectionEquality().hash(toDate),
      const DeepCollectionEquality().hash(expense));

  @JsonKey(ignore: true)
  @override
  _$$_TripCreateModelCopyWith<_$_TripCreateModel> get copyWith =>
      __$$_TripCreateModelCopyWithImpl<_$_TripCreateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripCreateModelToJson(
      this,
    );
  }
}

abstract class _TripCreateModel implements TripCreateModel {
  const factory _TripCreateModel(
      {required final String name,
      required final String fromDate,
      required final String toDate,
      required final String expense}) = _$_TripCreateModel;

  factory _TripCreateModel.fromJson(Map<String, dynamic> json) =
      _$_TripCreateModel.fromJson;

  @override
  String get name;
  @override
  String get fromDate;
  @override
  String get toDate;
  @override
  String get expense;
  @override
  @JsonKey(ignore: true)
  _$$_TripCreateModelCopyWith<_$_TripCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
