// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String?,
      chatId: json['chatId'] as String,
      text: json['text'] as String,
      authorId: json['authorId'] as String,
      sentAt: DateTime.parse(json['sentAt'] as String),
      readUsersIds: (json['readUsersIds'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'text': instance.text,
      'authorId': instance.authorId,
      'sentAt': instance.sentAt.toIso8601String(),
      'readUsersIds': instance.readUsersIds,
    };
