// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as String,
      text: json['text'] as String,
      authorId: json['authorId'] as String,
      sentAt: DateTime.parse(json['sentAt'] as String),
      readUsersIds: (json['readUsersIds'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'authorId': instance.authorId,
      'sentAt': instance.sentAt.toIso8601String(),
      'readUsersIds': instance.readUsersIds.toList(),
    };
