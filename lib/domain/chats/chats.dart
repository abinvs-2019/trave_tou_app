// To parse this JSON data, do
//
//     final chatModel = chatModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chats.freezed.dart';
part 'chats.g.dart';

List<ChatModel> chatModelFromJson(String str) => List<ChatModel>.from(json.decode(str).map((x) => ChatModel.fromJson(x)));

String chatModelToJson(List<ChatModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ChatModel with _$ChatModel {
    const factory ChatModel({
        required String time,
        required String message,
        required bool isSentByMe,
    }) = _ChatModel;

    factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}
