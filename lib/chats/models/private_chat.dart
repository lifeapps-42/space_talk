import 'package:freezed_annotation/freezed_annotation.dart';

import '../../messages/models/message.dart';

part 'private_chat.g.dart';

@JsonSerializable()
class Chat {
  final String id;
  final Message lastMessage;
  final Set<String> users;

  Chat({
    required this.id,
    required this.lastMessage,
    required this.users,
  });
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
  
  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
