// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripCreateModel _$$_TripCreateModelFromJson(Map<String, dynamic> json) =>
    _$_TripCreateModel(
      name: json['name'] as String,
      fromDate: json['fromDate'] as String,
      toDate: json['toDate'] as String,
      expense: json['expense'] as String,
      users: json['users'] as List<dynamic>,
    );

Map<String, dynamic> _$$_TripCreateModelToJson(_$_TripCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'expense': instance.expense,
      'users': instance.users,
    };
