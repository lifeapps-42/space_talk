// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserOfflineStatus _$$UserOfflineStatusFromJson(Map<String, dynamic> json) =>
    _$UserOfflineStatus(
      DateTime.parse(json['lastSeen'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserOfflineStatusToJson(_$UserOfflineStatus instance) =>
    <String, dynamic>{
      'lastSeen': instance.lastSeen.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$UserOnlineStatus _$$UserOnlineStatusFromJson(Map<String, dynamic> json) =>
    _$UserOnlineStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserOnlineStatusToJson(_$UserOnlineStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserPrintingStatus _$$UserPrintingStatusFromJson(Map<String, dynamic> json) =>
    _$UserPrintingStatus(
      json['chatId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserPrintingStatusToJson(
        _$UserPrintingStatus instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'runtimeType': instance.$type,
    };
