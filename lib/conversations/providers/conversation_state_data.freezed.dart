// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConversationStateDataTearOff {
  const _$ConversationStateDataTearOff();

  _ConversationStateData call(
      {required List<Message> messages,
      required List<GroupedMessages> groupedMessages,
      required bool hasMoreToFetch,
      required String chatId}) {
    return _ConversationStateData(
      messages: messages,
      groupedMessages: groupedMessages,
      hasMoreToFetch: hasMoreToFetch,
      chatId: chatId,
    );
  }
}

/// @nodoc
const $ConversationStateData = _$ConversationStateDataTearOff();

/// @nodoc
mixin _$ConversationStateData {
  List<Message> get messages => throw _privateConstructorUsedError;
  List<GroupedMessages> get groupedMessages =>
      throw _privateConstructorUsedError;
  bool get hasMoreToFetch => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationStateDataCopyWith<ConversationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateDataCopyWith<$Res> {
  factory $ConversationStateDataCopyWith(ConversationStateData value,
          $Res Function(ConversationStateData) then) =
      _$ConversationStateDataCopyWithImpl<$Res>;
  $Res call(
      {List<Message> messages,
      List<GroupedMessages> groupedMessages,
      bool hasMoreToFetch,
      String chatId});
}

/// @nodoc
class _$ConversationStateDataCopyWithImpl<$Res>
    implements $ConversationStateDataCopyWith<$Res> {
  _$ConversationStateDataCopyWithImpl(this._value, this._then);

  final ConversationStateData _value;
  // ignore: unused_field
  final $Res Function(ConversationStateData) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? groupedMessages = freezed,
    Object? hasMoreToFetch = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      groupedMessages: groupedMessages == freezed
          ? _value.groupedMessages
          : groupedMessages // ignore: cast_nullable_to_non_nullable
              as List<GroupedMessages>,
      hasMoreToFetch: hasMoreToFetch == freezed
          ? _value.hasMoreToFetch
          : hasMoreToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ConversationStateDataCopyWith<$Res>
    implements $ConversationStateDataCopyWith<$Res> {
  factory _$ConversationStateDataCopyWith(_ConversationStateData value,
          $Res Function(_ConversationStateData) then) =
      __$ConversationStateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Message> messages,
      List<GroupedMessages> groupedMessages,
      bool hasMoreToFetch,
      String chatId});
}

/// @nodoc
class __$ConversationStateDataCopyWithImpl<$Res>
    extends _$ConversationStateDataCopyWithImpl<$Res>
    implements _$ConversationStateDataCopyWith<$Res> {
  __$ConversationStateDataCopyWithImpl(_ConversationStateData _value,
      $Res Function(_ConversationStateData) _then)
      : super(_value, (v) => _then(v as _ConversationStateData));

  @override
  _ConversationStateData get _value => super._value as _ConversationStateData;

  @override
  $Res call({
    Object? messages = freezed,
    Object? groupedMessages = freezed,
    Object? hasMoreToFetch = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_ConversationStateData(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      groupedMessages: groupedMessages == freezed
          ? _value.groupedMessages
          : groupedMessages // ignore: cast_nullable_to_non_nullable
              as List<GroupedMessages>,
      hasMoreToFetch: hasMoreToFetch == freezed
          ? _value.hasMoreToFetch
          : hasMoreToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConversationStateData extends _ConversationStateData {
  const _$_ConversationStateData(
      {required this.messages,
      required this.groupedMessages,
      required this.hasMoreToFetch,
      required this.chatId})
      : super._();

  @override
  final List<Message> messages;
  @override
  final List<GroupedMessages> groupedMessages;
  @override
  final bool hasMoreToFetch;
  @override
  final String chatId;

  @override
  String toString() {
    return 'ConversationStateData(messages: $messages, groupedMessages: $groupedMessages, hasMoreToFetch: $hasMoreToFetch, chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConversationStateData &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality()
                .equals(other.groupedMessages, groupedMessages) &&
            const DeepCollectionEquality()
                .equals(other.hasMoreToFetch, hasMoreToFetch) &&
            const DeepCollectionEquality().equals(other.chatId, chatId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(groupedMessages),
      const DeepCollectionEquality().hash(hasMoreToFetch),
      const DeepCollectionEquality().hash(chatId));

  @JsonKey(ignore: true)
  @override
  _$ConversationStateDataCopyWith<_ConversationStateData> get copyWith =>
      __$ConversationStateDataCopyWithImpl<_ConversationStateData>(
          this, _$identity);
}

abstract class _ConversationStateData extends ConversationStateData {
  const factory _ConversationStateData(
      {required List<Message> messages,
      required List<GroupedMessages> groupedMessages,
      required bool hasMoreToFetch,
      required String chatId}) = _$_ConversationStateData;
  const _ConversationStateData._() : super._();

  @override
  List<Message> get messages;
  @override
  List<GroupedMessages> get groupedMessages;
  @override
  bool get hasMoreToFetch;
  @override
  String get chatId;
  @override
  @JsonKey(ignore: true)
  _$ConversationStateDataCopyWith<_ConversationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
