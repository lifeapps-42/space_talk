// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_status.freezed.dart';
part 'user_status.g.dart';

@freezed
class UserStatus with _$UserStatus{
  @JsonSerializable(explicitToJson: true)
  const factory UserStatus.offline(DateTime lastSeen) = UserOfflineStatus;
  const factory UserStatus.online() = UserOnlineStatus;
  const factory UserStatus.typing(String chatId) = UserPrintingStatus;

  factory UserStatus.fromJson(Map<String, dynamic> json) => _$UserStatusFromJson(json);
}

