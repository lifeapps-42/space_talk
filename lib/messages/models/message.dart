import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.g.dart';

@JsonSerializable(explicitToJson: true)
class Message {
  final String? id;
  final String text;
  final String authorId;
  final DateTime sentAt;
  final Set<String> readUsersIds;

  Message({
    this.id,
    required this.text,
    required this.authorId,
    required this.sentAt,
    required this.readUsersIds,
  });

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
  
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
