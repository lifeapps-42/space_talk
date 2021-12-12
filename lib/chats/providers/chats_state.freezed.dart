// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatsStateTearOff {
  const _$ChatsStateTearOff();

  ChatsInitializingState initializing() {
    return const ChatsInitializingState();
  }

  ChatsNoChatsState noChats() {
    return const ChatsNoChatsState();
  }

  ChatsSubscribedState subscribed(List<Chat> chats) {
    return ChatsSubscribedState(
      chats,
    );
  }
}

/// @nodoc
const $ChatsState = _$ChatsStateTearOff();

/// @nodoc
mixin _$ChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() noChats,
    required TResult Function(List<Chat> chats) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitializingState value) initializing,
    required TResult Function(ChatsNoChatsState value) noChats,
    required TResult Function(ChatsSubscribedState value) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<$Res> {
  factory $ChatsStateCopyWith(
          ChatsState value, $Res Function(ChatsState) then) =
      _$ChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<$Res> implements $ChatsStateCopyWith<$Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  final ChatsState _value;
  // ignore: unused_field
  final $Res Function(ChatsState) _then;
}

/// @nodoc
abstract class $ChatsInitializingStateCopyWith<$Res> {
  factory $ChatsInitializingStateCopyWith(ChatsInitializingState value,
          $Res Function(ChatsInitializingState) then) =
      _$ChatsInitializingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsInitializingStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res>
    implements $ChatsInitializingStateCopyWith<$Res> {
  _$ChatsInitializingStateCopyWithImpl(ChatsInitializingState _value,
      $Res Function(ChatsInitializingState) _then)
      : super(_value, (v) => _then(v as ChatsInitializingState));

  @override
  ChatsInitializingState get _value => super._value as ChatsInitializingState;
}

/// @nodoc

class _$ChatsInitializingState implements ChatsInitializingState {
  const _$ChatsInitializingState();

  @override
  String toString() {
    return 'ChatsState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatsInitializingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() noChats,
    required TResult Function(List<Chat> chats) subscribed,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitializingState value) initializing,
    required TResult Function(ChatsNoChatsState value) noChats,
    required TResult Function(ChatsSubscribedState value) subscribed,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class ChatsInitializingState implements ChatsState {
  const factory ChatsInitializingState() = _$ChatsInitializingState;
}

/// @nodoc
abstract class $ChatsNoChatsStateCopyWith<$Res> {
  factory $ChatsNoChatsStateCopyWith(
          ChatsNoChatsState value, $Res Function(ChatsNoChatsState) then) =
      _$ChatsNoChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatsNoChatsStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res>
    implements $ChatsNoChatsStateCopyWith<$Res> {
  _$ChatsNoChatsStateCopyWithImpl(
      ChatsNoChatsState _value, $Res Function(ChatsNoChatsState) _then)
      : super(_value, (v) => _then(v as ChatsNoChatsState));

  @override
  ChatsNoChatsState get _value => super._value as ChatsNoChatsState;
}

/// @nodoc

class _$ChatsNoChatsState implements ChatsNoChatsState {
  const _$ChatsNoChatsState();

  @override
  String toString() {
    return 'ChatsState.noChats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatsNoChatsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() noChats,
    required TResult Function(List<Chat> chats) subscribed,
  }) {
    return noChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
  }) {
    return noChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
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
    required TResult Function(ChatsInitializingState value) initializing,
    required TResult Function(ChatsNoChatsState value) noChats,
    required TResult Function(ChatsSubscribedState value) subscribed,
  }) {
    return noChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
  }) {
    return noChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (noChats != null) {
      return noChats(this);
    }
    return orElse();
  }
}

abstract class ChatsNoChatsState implements ChatsState {
  const factory ChatsNoChatsState() = _$ChatsNoChatsState;
}

/// @nodoc
abstract class $ChatsSubscribedStateCopyWith<$Res> {
  factory $ChatsSubscribedStateCopyWith(ChatsSubscribedState value,
          $Res Function(ChatsSubscribedState) then) =
      _$ChatsSubscribedStateCopyWithImpl<$Res>;
  $Res call({List<Chat> chats});
}

/// @nodoc
class _$ChatsSubscribedStateCopyWithImpl<$Res>
    extends _$ChatsStateCopyWithImpl<$Res>
    implements $ChatsSubscribedStateCopyWith<$Res> {
  _$ChatsSubscribedStateCopyWithImpl(
      ChatsSubscribedState _value, $Res Function(ChatsSubscribedState) _then)
      : super(_value, (v) => _then(v as ChatsSubscribedState));

  @override
  ChatsSubscribedState get _value => super._value as ChatsSubscribedState;

  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(ChatsSubscribedState(
      chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$ChatsSubscribedState implements ChatsSubscribedState {
  const _$ChatsSubscribedState(this.chats);

  @override
  final List<Chat> chats;

  @override
  String toString() {
    return 'ChatsState.subscribed(chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatsSubscribedState &&
            const DeepCollectionEquality().equals(other.chats, chats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chats));

  @JsonKey(ignore: true)
  @override
  $ChatsSubscribedStateCopyWith<ChatsSubscribedState> get copyWith =>
      _$ChatsSubscribedStateCopyWithImpl<ChatsSubscribedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() noChats,
    required TResult Function(List<Chat> chats) subscribed,
  }) {
    return subscribed(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
  }) {
    return subscribed?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? noChats,
    TResult Function(List<Chat> chats)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitializingState value) initializing,
    required TResult Function(ChatsNoChatsState value) noChats,
    required TResult Function(ChatsSubscribedState value) subscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitializingState value)? initializing,
    TResult Function(ChatsNoChatsState value)? noChats,
    TResult Function(ChatsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class ChatsSubscribedState implements ChatsState {
  const factory ChatsSubscribedState(List<Chat> chats) = _$ChatsSubscribedState;

  List<Chat> get chats;
  @JsonKey(ignore: true)
  $ChatsSubscribedStateCopyWith<ChatsSubscribedState> get copyWith =>
      throw _privateConstructorUsedError;
}
