// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../messages/models/message.dart';

part 'conversation_event.freezed.dart';
part 'conversation_event.g.dart';

@freezed
class ConversationEvent with _$ConversationEvent{
  @JsonSerializable(explicitToJson: true)
  const factory ConversationEvent.add(Message message) = ConversationAddEvent;
  const factory ConversationEvent.edit(Message message) = ConversationEditEvent;
  const factory ConversationEvent.delete(String messageId) = ConversationDeleteEvent;
  const factory ConversationEvent.messageRead(String messageId) = ConversationMessageReadEvent;

  factory ConversationEvent.fromJson(Map<String, dynamic> json) => _$ConversationEventFromJson(json);

}