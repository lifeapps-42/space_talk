// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {String? id,
      required String chatId,
      required String text,
      required String authorId,
      required DateTime sentAt,
      required List<String?> readUsersIds,
      Message? quote}) {
    return _Message(
      id: id,
      chatId: chatId,
      text: text,
      authorId: authorId,
      sentAt: sentAt,
      readUsersIds: readUsersIds,
      quote: quote,
    );
  }

  Message fromJson(Map<String, Object?> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String? get id => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  List<String?> get readUsersIds => throw _privateConstructorUsedError;
  Message? get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String chatId,
      String text,
      String authorId,
      DateTime sentAt,
      List<String?> readUsersIds,
      Message? quote});

  $MessageCopyWith<$Res>? get quote;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? sentAt = freezed,
    Object? readUsersIds = freezed,
    Object? quote = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readUsersIds: readUsersIds == freezed
          ? _value.readUsersIds
          : readUsersIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }

  @override
  $MessageCopyWith<$Res>? get quote {
    if (_value.quote == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.quote!, (value) {
      return _then(_value.copyWith(quote: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String chatId,
      String text,
      String authorId,
      DateTime sentAt,
      List<String?> readUsersIds,
      Message? quote});

  @override
  $MessageCopyWith<$Res>? get quote;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? text = freezed,
    Object? authorId = freezed,
    Object? sentAt = freezed,
    Object? readUsersIds = freezed,
    Object? quote = freezed,
  }) {
    return _then(_Message(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readUsersIds: readUsersIds == freezed
          ? _value.readUsersIds
          : readUsersIds // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Message implements _Message {
  const _$_Message(
      {this.id,
      required this.chatId,
      required this.text,
      required this.authorId,
      required this.sentAt,
      required this.readUsersIds,
      this.quote});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String? id;
  @override
  final String chatId;
  @override
  final String text;
  @override
  final String authorId;
  @override
  final DateTime sentAt;
  @override
  final List<String?> readUsersIds;
  @override
  final Message? quote;

  @override
  String toString() {
    return 'Message(id: $id, chatId: $chatId, text: $text, authorId: $authorId, sentAt: $sentAt, readUsersIds: $readUsersIds, quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.chatId, chatId) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality().equals(other.sentAt, sentAt) &&
            const DeepCollectionEquality()
                .equals(other.readUsersIds, readUsersIds) &&
            const DeepCollectionEquality().equals(other.quote, quote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(chatId),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(sentAt),
      const DeepCollectionEquality().hash(readUsersIds),
      const DeepCollectionEquality().hash(quote));

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {String? id,
      required String chatId,
      required String text,
      required String authorId,
      required DateTime sentAt,
      required List<String?> readUsersIds,
      Message? quote}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String? get id;
  @override
  String get chatId;
  @override
  String get text;
  @override
  String get authorId;
  @override
  DateTime get sentAt;
  @override
  List<String?> get readUsersIds;
  @override
  Message? get quote;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
