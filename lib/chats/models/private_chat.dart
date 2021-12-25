import 'package:freezed_annotation/freezed_annotation.dart';

import '../../messages/models/message.dart';

part 'private_chat.g.dart';

@JsonSerializable(explicitToJson: true)
class Chat {
  final String? id;
  final Message lastMessage;
  final Set<String> users;
  final int? messagesCount;
  final Map<String, int>? readBy;

  Chat({
    this.id,
    required this.lastMessage,
    required this.users,
    required this.messagesCount, required this.readBy, 
  });
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
