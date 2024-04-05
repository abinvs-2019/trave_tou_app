// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<dynamic> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCreateModelCopyWith<TripCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCreateModelCopyWith<$Res> {
  factory $TripCreateModelCopyWith(
          TripCreateModel value, $Res Function(TripCreateModel) then) =
      _$TripCreateModelCopyWithImpl<$Res, TripCreateModel>;
  @useResult
  $Res call(
      {String name,
      String fromDate,
      String toDate,
      String expense,
      List<dynamic> users});
}

/// @nodoc
class _$TripCreateModelCopyWithImpl<$Res, $Val extends TripCreateModel>
    implements $TripCreateModelCopyWith<$Res> {
  _$TripCreateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? expense = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripCreateModelCopyWith<$Res>
    implements $TripCreateModelCopyWith<$Res> {
  factory _$$_TripCreateModelCopyWith(
          _$_TripCreateModel value, $Res Function(_$_TripCreateModel) then) =
      __$$_TripCreateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String fromDate,
      String toDate,
      String expense,
      List<dynamic> users});
}

/// @nodoc
class __$$_TripCreateModelCopyWithImpl<$Res>
    extends _$TripCreateModelCopyWithImpl<$Res, _$_TripCreateModel>
    implements _$$_TripCreateModelCopyWith<$Res> {
  __$$_TripCreateModelCopyWithImpl(
      _$_TripCreateModel _value, $Res Function(_$_TripCreateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? expense = null,
    Object? users = null,
  }) {
    return _then(_$_TripCreateModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      required this.expense,
      required final List<dynamic> users})
      : _users = users;

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
  final List<dynamic> _users;
  @override
  List<dynamic> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'TripCreateModel(name: $name, fromDate: $fromDate, toDate: $toDate, expense: $expense, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripCreateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fromDate, toDate, expense,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      required final String expense,
      required final List<dynamic> users}) = _$_TripCreateModel;

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
  List<dynamic> get users;
  @override
  @JsonKey(ignore: true)
  _$$_TripCreateModelCopyWith<_$_TripCreateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
