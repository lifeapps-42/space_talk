// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      id: json['id'] as String?,
      lastMessage:
          Message.fromJson(json['lastMessage'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>).map((e) => e as String).toSet(),
      messagesCount: json['messagesCount'] as int?,
      readBy: (json['readBy'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'id': instance.id,
      'lastMessage': instance.lastMessage.toJson(),
      'users': instance.users.toList(),
      'messagesCount': instance.messagesCount,
      'readBy': instance.readBy,
    };
