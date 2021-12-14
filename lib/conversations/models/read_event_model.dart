import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_event_model.g.dart';

@JsonSerializable()
class ReadEventModel {
  final String messageId;
  final String userId;

  ReadEventModel(this.messageId, this.userId);

  factory ReadEventModel.fromJson(Map<String, dynamic> json) => _$ReadEventModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReadEventModelToJson(this);
}