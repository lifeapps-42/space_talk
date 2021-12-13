// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStatus _$UserStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'offline':
      return UserOfflineStatus.fromJson(json);
    case 'online':
      return UserOnlineStatus.fromJson(json);
    case 'typing':
      return UserPrintingStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserStatusTearOff {
  const _$UserStatusTearOff();

  UserOfflineStatus offline(DateTime lastSeen) {
    return UserOfflineStatus(
      lastSeen,
    );
  }

  UserOnlineStatus online() {
    return const UserOnlineStatus();
  }

  UserPrintingStatus typing(String chatId) {
    return UserPrintingStatus(
      chatId,
    );
  }

  UserStatus fromJson(Map<String, Object?> json) {
    return UserStatus.fromJson(json);
  }
}

/// @nodoc
const $UserStatus = _$UserStatusTearOff();

/// @nodoc
mixin _$UserStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastSeen) offline,
    required TResult Function() online,
    required TResult Function(String chatId) typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserOfflineStatus value) offline,
    required TResult Function(UserOnlineStatus value) online,
    required TResult Function(UserPrintingStatus value) typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatusCopyWith<$Res> {
  factory $UserStatusCopyWith(
          UserStatus value, $Res Function(UserStatus) then) =
      _$UserStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStatusCopyWithImpl<$Res> implements $UserStatusCopyWith<$Res> {
  _$UserStatusCopyWithImpl(this._value, this._then);

  final UserStatus _value;
  // ignore: unused_field
  final $Res Function(UserStatus) _then;
}

/// @nodoc
abstract class $UserOfflineStatusCopyWith<$Res> {
  factory $UserOfflineStatusCopyWith(
          UserOfflineStatus value, $Res Function(UserOfflineStatus) then) =
      _$UserOfflineStatusCopyWithImpl<$Res>;
  $Res call({DateTime lastSeen});
}

/// @nodoc
class _$UserOfflineStatusCopyWithImpl<$Res>
    extends _$UserStatusCopyWithImpl<$Res>
    implements $UserOfflineStatusCopyWith<$Res> {
  _$UserOfflineStatusCopyWithImpl(
      UserOfflineStatus _value, $Res Function(UserOfflineStatus) _then)
      : super(_value, (v) => _then(v as UserOfflineStatus));

  @override
  UserOfflineStatus get _value => super._value as UserOfflineStatus;

  @override
  $Res call({
    Object? lastSeen = freezed,
  }) {
    return _then(UserOfflineStatus(
      lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserOfflineStatus implements UserOfflineStatus {
  const _$UserOfflineStatus(this.lastSeen, {String? $type})
      : $type = $type ?? 'offline';

  factory _$UserOfflineStatus.fromJson(Map<String, dynamic> json) =>
      _$$UserOfflineStatusFromJson(json);

  @override
  final DateTime lastSeen;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStatus.offline(lastSeen: $lastSeen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserOfflineStatus &&
            const DeepCollectionEquality().equals(other.lastSeen, lastSeen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lastSeen));

  @JsonKey(ignore: true)
  @override
  $UserOfflineStatusCopyWith<UserOfflineStatus> get copyWith =>
      _$UserOfflineStatusCopyWithImpl<UserOfflineStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastSeen) offline,
    required TResult Function() online,
    required TResult Function(String chatId) typing,
  }) {
    return offline(lastSeen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
  }) {
    return offline?.call(lastSeen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(lastSeen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserOfflineStatus value) offline,
    required TResult Function(UserOnlineStatus value) online,
    required TResult Function(UserPrintingStatus value) typing,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOfflineStatusToJson(this);
  }
}

abstract class UserOfflineStatus implements UserStatus {
  const factory UserOfflineStatus(DateTime lastSeen) = _$UserOfflineStatus;

  factory UserOfflineStatus.fromJson(Map<String, dynamic> json) =
      _$UserOfflineStatus.fromJson;

  DateTime get lastSeen;
  @JsonKey(ignore: true)
  $UserOfflineStatusCopyWith<UserOfflineStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOnlineStatusCopyWith<$Res> {
  factory $UserOnlineStatusCopyWith(
          UserOnlineStatus value, $Res Function(UserOnlineStatus) then) =
      _$UserOnlineStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserOnlineStatusCopyWithImpl<$Res>
    extends _$UserStatusCopyWithImpl<$Res>
    implements $UserOnlineStatusCopyWith<$Res> {
  _$UserOnlineStatusCopyWithImpl(
      UserOnlineStatus _value, $Res Function(UserOnlineStatus) _then)
      : super(_value, (v) => _then(v as UserOnlineStatus));

  @override
  UserOnlineStatus get _value => super._value as UserOnlineStatus;
}

/// @nodoc
@JsonSerializable()
class _$UserOnlineStatus implements UserOnlineStatus {
  const _$UserOnlineStatus({String? $type}) : $type = $type ?? 'online';

  factory _$UserOnlineStatus.fromJson(Map<String, dynamic> json) =>
      _$$UserOnlineStatusFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStatus.online()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserOnlineStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastSeen) offline,
    required TResult Function() online,
    required TResult Function(String chatId) typing,
  }) {
    return online();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
  }) {
    return online?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserOfflineStatus value) offline,
    required TResult Function(UserOnlineStatus value) online,
    required TResult Function(UserPrintingStatus value) typing,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOnlineStatusToJson(this);
  }
}

abstract class UserOnlineStatus implements UserStatus {
  const factory UserOnlineStatus() = _$UserOnlineStatus;

  factory UserOnlineStatus.fromJson(Map<String, dynamic> json) =
      _$UserOnlineStatus.fromJson;
}

/// @nodoc
abstract class $UserPrintingStatusCopyWith<$Res> {
  factory $UserPrintingStatusCopyWith(
          UserPrintingStatus value, $Res Function(UserPrintingStatus) then) =
      _$UserPrintingStatusCopyWithImpl<$Res>;
  $Res call({String chatId});
}

/// @nodoc
class _$UserPrintingStatusCopyWithImpl<$Res>
    extends _$UserStatusCopyWithImpl<$Res>
    implements $UserPrintingStatusCopyWith<$Res> {
  _$UserPrintingStatusCopyWithImpl(
      UserPrintingStatus _value, $Res Function(UserPrintingStatus) _then)
      : super(_value, (v) => _then(v as UserPrintingStatus));

  @override
  UserPrintingStatus get _value => super._value as UserPrintingStatus;

  @override
  $Res call({
    Object? chatId = freezed,
  }) {
    return _then(UserPrintingStatus(
      chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPrintingStatus implements UserPrintingStatus {
  const _$UserPrintingStatus(this.chatId, {String? $type})
      : $type = $type ?? 'typing';

  factory _$UserPrintingStatus.fromJson(Map<String, dynamic> json) =>
      _$$UserPrintingStatusFromJson(json);

  @override
  final String chatId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserStatus.typing(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPrintingStatus &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatId));

  @JsonKey(ignore: true)
  @override
  $UserPrintingStatusCopyWith<UserPrintingStatus> get copyWith =>
      _$UserPrintingStatusCopyWithImpl<UserPrintingStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastSeen) offline,
    required TResult Function() online,
    required TResult Function(String chatId) typing,
  }) {
    return typing(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
  }) {
    return typing?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastSeen)? offline,
    TResult Function()? online,
    TResult Function(String chatId)? typing,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserOfflineStatus value) offline,
    required TResult Function(UserOnlineStatus value) online,
    required TResult Function(UserPrintingStatus value) typing,
  }) {
    return typing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
  }) {
    return typing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserOfflineStatus value)? offline,
    TResult Function(UserOnlineStatus value)? online,
    TResult Function(UserPrintingStatus value)? typing,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPrintingStatusToJson(this);
  }
}

abstract class UserPrintingStatus implements UserStatus {
  const factory UserPrintingStatus(String chatId) = _$UserPrintingStatus;

  factory UserPrintingStatus.fromJson(Map<String, dynamic> json) =
      _$UserPrintingStatus.fromJson;

  String get chatId;
  @JsonKey(ignore: true)
  $UserPrintingStatusCopyWith<UserPrintingStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
