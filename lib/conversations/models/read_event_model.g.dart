// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReadEventModel _$ReadEventModelFromJson(Map<String, dynamic> json) =>
    ReadEventModel(
      json['messageId'] as String,
      json['userId'] as String,
    );

Map<String, dynamic> _$ReadEventModelToJson(ReadEventModel instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'userId': instance.userId,
    };
