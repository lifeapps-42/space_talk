import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/phone.dart';
import 'user_status.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String uid;
  final String name;
  final PhoneNumber phone;
  final UserStatus status;
  final String? photoUrl;

  User({
    required this.uid,
    required this.name,
    required this.phone,
    required this.status,
    this.photoUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
