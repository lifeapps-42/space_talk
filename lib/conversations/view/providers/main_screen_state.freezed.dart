// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainScreenStateTearOff {
  const _$MainScreenStateTearOff();

  MainScreenChatsState chats() {
    return const MainScreenChatsState();
  }

  MainScreenConversationState conversation(
      MainScreenConversationStateData data) {
    return MainScreenConversationState(
      data,
    );
  }
}

/// @nodoc
const $MainScreenState = _$MainScreenStateTearOff();

/// @nodoc
mixin _$MainScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chats,
    required TResult Function(MainScreenConversationStateData data)
        conversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenChatsState value) chats,
    required TResult Function(MainScreenConversationState value) conversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  final MainScreenState _value;
  // ignore: unused_field
  final $Res Function(MainScreenState) _then;
}

/// @nodoc
abstract class $MainScreenChatsStateCopyWith<$Res> {
  factory $MainScreenChatsStateCopyWith(MainScreenChatsState value,
          $Res Function(MainScreenChatsState) then) =
      _$MainScreenChatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenChatsStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenChatsStateCopyWith<$Res> {
  _$MainScreenChatsStateCopyWithImpl(
      MainScreenChatsState _value, $Res Function(MainScreenChatsState) _then)
      : super(_value, (v) => _then(v as MainScreenChatsState));

  @override
  MainScreenChatsState get _value => super._value as MainScreenChatsState;
}

/// @nodoc

class _$MainScreenChatsState implements MainScreenChatsState {
  const _$MainScreenChatsState();

  @override
  String toString() {
    return 'MainScreenState.chats()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainScreenChatsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chats,
    required TResult Function(MainScreenConversationStateData data)
        conversation,
  }) {
    return chats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
  }) {
    return chats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
    required TResult orElse(),
  }) {
    if (chats != null) {
      return chats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenChatsState value) chats,
    required TResult Function(MainScreenConversationState value) conversation,
  }) {
    return chats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
  }) {
    return chats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
    required TResult orElse(),
  }) {
    if (chats != null) {
      return chats(this);
    }
    return orElse();
  }
}

abstract class MainScreenChatsState implements MainScreenState {
  const factory MainScreenChatsState() = _$MainScreenChatsState;
}

/// @nodoc
abstract class $MainScreenConversationStateCopyWith<$Res> {
  factory $MainScreenConversationStateCopyWith(
          MainScreenConversationState value,
          $Res Function(MainScreenConversationState) then) =
      _$MainScreenConversationStateCopyWithImpl<$Res>;
  $Res call({MainScreenConversationStateData data});
}

/// @nodoc
class _$MainScreenConversationStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenConversationStateCopyWith<$Res> {
  _$MainScreenConversationStateCopyWithImpl(MainScreenConversationState _value,
      $Res Function(MainScreenConversationState) _then)
      : super(_value, (v) => _then(v as MainScreenConversationState));

  @override
  MainScreenConversationState get _value =>
      super._value as MainScreenConversationState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(MainScreenConversationState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenConversationStateData,
    ));
  }
}

/// @nodoc

class _$MainScreenConversationState implements MainScreenConversationState {
  const _$MainScreenConversationState(this.data);

  @override
  final MainScreenConversationStateData data;

  @override
  String toString() {
    return 'MainScreenState.conversation(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainScreenConversationState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $MainScreenConversationStateCopyWith<MainScreenConversationState>
      get copyWith => _$MainScreenConversationStateCopyWithImpl<
          MainScreenConversationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() chats,
    required TResult Function(MainScreenConversationStateData data)
        conversation,
  }) {
    return conversation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
  }) {
    return conversation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? chats,
    TResult Function(MainScreenConversationStateData data)? conversation,
    required TResult orElse(),
  }) {
    if (conversation != null) {
      return conversation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenChatsState value) chats,
    required TResult Function(MainScreenConversationState value) conversation,
  }) {
    return conversation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
  }) {
    return conversation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenChatsState value)? chats,
    TResult Function(MainScreenConversationState value)? conversation,
    required TResult orElse(),
  }) {
    if (conversation != null) {
      return conversation(this);
    }
    return orElse();
  }
}

abstract class MainScreenConversationState implements MainScreenState {
  const factory MainScreenConversationState(
      MainScreenConversationStateData data) = _$MainScreenConversationState;

  MainScreenConversationStateData get data;
  @JsonKey(ignore: true)
  $MainScreenConversationStateCopyWith<MainScreenConversationState>
      get copyWith => throw _privateConstructorUsedError;
}
