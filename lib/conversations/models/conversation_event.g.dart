// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationAddEvent _$$ConversationAddEventFromJson(
        Map<String, dynamic> json) =>
    _$ConversationAddEvent(
      Message.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConversationAddEventToJson(
        _$ConversationAddEvent instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
      'runtimeType': instance.$type,
    };

_$ConversationEditEvent _$$ConversationEditEventFromJson(
        Map<String, dynamic> json) =>
    _$ConversationEditEvent(
      Message.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConversationEditEventToJson(
        _$ConversationEditEvent instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ConversationDeleteEvent _$$ConversationDeleteEventFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDeleteEvent(
      json['messageId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConversationDeleteEventToJson(
        _$ConversationDeleteEvent instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'runtimeType': instance.$type,
    };

_$ConversationMessageReadEvent _$$ConversationMessageReadEventFromJson(
        Map<String, dynamic> json) =>
    _$ConversationMessageReadEvent(
      json['messageId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConversationMessageReadEventToJson(
        _$ConversationMessageReadEvent instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'runtimeType': instance.$type,
    };
