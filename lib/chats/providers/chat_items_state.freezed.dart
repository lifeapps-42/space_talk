// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatItemsStateTearOff {
  const _$ChatItemsStateTearOff();

  ChatItemsLoadingState loading() {
    return const ChatItemsLoadingState();
  }

  ChatItemsNoItemsState noChats() {
    return const ChatItemsNoItemsState();
  }

  ChatItemsSubscribedState subscribed(List<ChatItem> chatItems) {
    return ChatItemsSubscribedState(
      chatItems,
    );
  }
}

/// @nodoc
const $ChatItemsState = _$ChatItemsStateTearOff();

/// @nodoc
mixin _$ChatItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noChats,
    required TResult Function(List<ChatItem> chatItems) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatItemsLoadingState value) loading,
    required TResult Function(ChatItemsNoItemsState value) noChats,
    required TResult Function(ChatItemsSubscribedState value) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatItemsStateCopyWith<$Res> {
  factory $ChatItemsStateCopyWith(
          ChatItemsState value, $Res Function(ChatItemsState) then) =
      _$ChatItemsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatItemsStateCopyWithImpl<$Res>
    implements $ChatItemsStateCopyWith<$Res> {
  _$ChatItemsStateCopyWithImpl(this._value, this._then);

  final ChatItemsState _value;
  // ignore: unused_field
  final $Res Function(ChatItemsState) _then;
}

/// @nodoc
abstract class $ChatItemsLoadingStateCopyWith<$Res> {
  factory $ChatItemsLoadingStateCopyWith(ChatItemsLoadingState value,
          $Res Function(ChatItemsLoadingState) then) =
      _$ChatItemsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatItemsLoadingStateCopyWithImpl<$Res>
    extends _$ChatItemsStateCopyWithImpl<$Res>
    implements $ChatItemsLoadingStateCopyWith<$Res> {
  _$ChatItemsLoadingStateCopyWithImpl(
      ChatItemsLoadingState _value, $Res Function(ChatItemsLoadingState) _then)
      : super(_value, (v) => _then(v as ChatItemsLoadingState));

  @override
  ChatItemsLoadingState get _value => super._value as ChatItemsLoadingState;
}

/// @nodoc

class _$ChatItemsLoadingState implements ChatItemsLoadingState {
  const _$ChatItemsLoadingState();

  @override
  String toString() {
    return 'ChatItemsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatItemsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noChats,
    required TResult Function(List<ChatItem> chatItems) subscribed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatItemsLoadingState value) loading,
    required TResult Function(ChatItemsNoItemsState value) noChats,
    required TResult Function(ChatItemsSubscribedState value) subscribed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatItemsLoadingState implements ChatItemsState {
  const factory ChatItemsLoadingState() = _$ChatItemsLoadingState;
}

/// @nodoc
abstract class $ChatItemsNoItemsStateCopyWith<$Res> {
  factory $ChatItemsNoItemsStateCopyWith(ChatItemsNoItemsState value,
          $Res Function(ChatItemsNoItemsState) then) =
      _$ChatItemsNoItemsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatItemsNoItemsStateCopyWithImpl<$Res>
    extends _$ChatItemsStateCopyWithImpl<$Res>
    implements $ChatItemsNoItemsStateCopyWith<$Res> {
  _$ChatItemsNoItemsStateCopyWithImpl(
      ChatItemsNoItemsState _value, $Res Function(ChatItemsNoItemsState) _then)
      : super(_value, (v) => _then(v as ChatItemsNoItemsState));

  @override
  ChatItemsNoItemsState get _value => super._value as ChatItemsNoItemsState;
}

/// @nodoc

class _$ChatItemsNoItemsState implements ChatItemsNoItemsState {
  const _$ChatItemsNoItemsState();

  @override
  String toString() {
    return 'ChatItemsState.noChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatItemsNoItemsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noChats,
    required TResult Function(List<ChatItem> chatItems) subscribed,
  }) {
    return noChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
  }) {
    return noChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
    required TResult orElse(),
  }) {
    if (noChats != null) {
      return noChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatItemsLoadingState value) loading,
    required TResult Function(ChatItemsNoItemsState value) noChats,
    required TResult Function(ChatItemsSubscribedState value) subscribed,
  }) {
    return noChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
  }) {
    return noChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (noChats != null) {
      return noChats(this);
    }
    return orElse();
  }
}

abstract class ChatItemsNoItemsState implements ChatItemsState {
  const factory ChatItemsNoItemsState() = _$ChatItemsNoItemsState;
}

/// @nodoc
abstract class $ChatItemsSubscribedStateCopyWith<$Res> {
  factory $ChatItemsSubscribedStateCopyWith(ChatItemsSubscribedState value,
          $Res Function(ChatItemsSubscribedState) then) =
      _$ChatItemsSubscribedStateCopyWithImpl<$Res>;
  $Res call({List<ChatItem> chatItems});
}

/// @nodoc
class _$ChatItemsSubscribedStateCopyWithImpl<$Res>
    extends _$ChatItemsStateCopyWithImpl<$Res>
    implements $ChatItemsSubscribedStateCopyWith<$Res> {
  _$ChatItemsSubscribedStateCopyWithImpl(ChatItemsSubscribedState _value,
      $Res Function(ChatItemsSubscribedState) _then)
      : super(_value, (v) => _then(v as ChatItemsSubscribedState));

  @override
  ChatItemsSubscribedState get _value =>
      super._value as ChatItemsSubscribedState;

  @override
  $Res call({
    Object? chatItems = freezed,
  }) {
    return _then(ChatItemsSubscribedState(
      chatItems == freezed
          ? _value.chatItems
          : chatItems // ignore: cast_nullable_to_non_nullable
              as List<ChatItem>,
    ));
  }
}

/// @nodoc

class _$ChatItemsSubscribedState implements ChatItemsSubscribedState {
  const _$ChatItemsSubscribedState(this.chatItems);

  @override
  final List<ChatItem> chatItems;

  @override
  String toString() {
    return 'ChatItemsState.subscribed(chatItems: $chatItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatItemsSubscribedState &&
            const DeepCollectionEquality().equals(other.chatItems, chatItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatItems));

  @JsonKey(ignore: true)
  @override
  $ChatItemsSubscribedStateCopyWith<ChatItemsSubscribedState> get copyWith =>
      _$ChatItemsSubscribedStateCopyWithImpl<ChatItemsSubscribedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noChats,
    required TResult Function(List<ChatItem> chatItems) subscribed,
  }) {
    return subscribed(chatItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
  }) {
    return subscribed?.call(chatItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noChats,
    TResult Function(List<ChatItem> chatItems)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(chatItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatItemsLoadingState value) loading,
    required TResult Function(ChatItemsNoItemsState value) noChats,
    required TResult Function(ChatItemsSubscribedState value) subscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatItemsLoadingState value)? loading,
    TResult Function(ChatItemsNoItemsState value)? noChats,
    TResult Function(ChatItemsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class ChatItemsSubscribedState implements ChatItemsState {
  const factory ChatItemsSubscribedState(List<ChatItem> chatItems) =
      _$ChatItemsSubscribedState;

  List<ChatItem> get chatItems;
  @JsonKey(ignore: true)
  $ChatItemsSubscribedStateCopyWith<ChatItemsSubscribedState> get copyWith =>
      throw _privateConstructorUsedError;
}
