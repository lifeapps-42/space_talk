// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      name: json['name'] as String,
      phone: PhoneNumber.fromJson(json['phone'] as Map<String, dynamic>),
      status: UserStatus.fromJson(json['status'] as Map<String, dynamic>),
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'phone': instance.phone.toJson(),
      'status': instance.status.toJson(),
      'photoUrl': instance.photoUrl,
    };
