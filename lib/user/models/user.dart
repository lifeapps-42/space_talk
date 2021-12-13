// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/phone.dart';
import 'user_status.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User{
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required String uid,
    required String name,
    required PhoneNumber phone,
    required UserStatus status,
    String? photoUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
