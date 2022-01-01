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
      'message': instance.message.toJson(),
      'runtimeType': instance.$type,
    };

_$ConversationDeleteEvent _$$ConversationDeleteEventFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDeleteEvent(
      Message.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConversationDeleteEventToJson(
        _$ConversationDeleteEvent instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
      'runtimeType': instance.$type,
    };
