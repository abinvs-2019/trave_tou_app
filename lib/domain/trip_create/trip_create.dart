import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'trip_create.freezed.dart';
part 'trip_create.g.dart';

List<TripCreateModel> tripCreateModelListFromJson(String str) =>
    List<TripCreateModel>.from(
        json.decode(str).map((x) => TripCreateModel.fromJson(x)));

String tripCreateModelListToJson(List<TripCreateModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class TripCreateModel with _$TripCreateModel {
  const factory TripCreateModel({
    required String name,
    required String fromDate,
    required String toDate,
    required String expense,
    required List users,
  }) = _TripCreateModel;

  factory TripCreateModel.fromJson(Map<String, dynamic> json) =>
      _$TripCreateModelFromJson(json);
}
