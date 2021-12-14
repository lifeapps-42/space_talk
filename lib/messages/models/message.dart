// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  @JsonSerializable(explicitToJson: true)
  const factory Message({
    String? id,
    required String text,
    required String authorId,
    required DateTime sentAt,
    required Set<String> readUsersIds,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
