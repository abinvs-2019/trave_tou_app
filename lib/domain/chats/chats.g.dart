// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      time: json['time'] as String,
      message: json['message'] as String,
      isSentByMe: json['isSentByMe'] as bool,
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'message': instance.message,
      'isSentByMe': instance.isSentByMe,
    };
