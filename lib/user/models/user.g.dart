// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      uid: json['uid'] as String,
      name: json['name'] as String,
      phone: PhoneNumber.fromJson(json['phone'] as Map<String, dynamic>),
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>),
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'phone': instance.phone,
      'status': instance.status,
      'photoUrl': instance.photoUrl,
    };
