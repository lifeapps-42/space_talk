// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'input_control_zone_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageInputStateTearOff {
  const _$MessageInputStateTearOff();

  MessageInputInactiveState inactive() {
    return const MessageInputInactiveState();
  }

  MessageInputTypingState typing() {
    return const MessageInputTypingState();
  }

  MessageInputDismissingState dismissing(DismissingStateData data) {
    return MessageInputDismissingState(
      data,
    );
  }

  MessageInputUnfocusEvent unfocusEvent() {
    return const MessageInputUnfocusEvent();
  }

  MessageInputRequestFocusEvent requestFocusEvent() {
    return const MessageInputRequestFocusEvent();
  }
}

/// @nodoc
const $MessageInputState = _$MessageInputStateTearOff();

/// @nodoc
mixin _$MessageInputState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInputStateCopyWith<$Res> {
  factory $MessageInputStateCopyWith(
          MessageInputState value, $Res Function(MessageInputState) then) =
      _$MessageInputStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputStateCopyWith<$Res> {
  _$MessageInputStateCopyWithImpl(this._value, this._then);

  final MessageInputState _value;
  // ignore: unused_field
  final $Res Function(MessageInputState) _then;
}

/// @nodoc
abstract class $MessageInputInactiveStateCopyWith<$Res> {
  factory $MessageInputInactiveStateCopyWith(MessageInputInactiveState value,
          $Res Function(MessageInputInactiveState) then) =
      _$MessageInputInactiveStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputInactiveStateCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputInactiveStateCopyWith<$Res> {
  _$MessageInputInactiveStateCopyWithImpl(MessageInputInactiveState _value,
      $Res Function(MessageInputInactiveState) _then)
      : super(_value, (v) => _then(v as MessageInputInactiveState));

  @override
  MessageInputInactiveState get _value =>
      super._value as MessageInputInactiveState;
}

/// @nodoc

class _$MessageInputInactiveState implements MessageInputInactiveState {
  const _$MessageInputInactiveState();

  @override
  String toString() {
    return 'MessageInputState.inactive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageInputInactiveState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class MessageInputInactiveState implements MessageInputState {
  const factory MessageInputInactiveState() = _$MessageInputInactiveState;
}

/// @nodoc
abstract class $MessageInputTypingStateCopyWith<$Res> {
  factory $MessageInputTypingStateCopyWith(MessageInputTypingState value,
          $Res Function(MessageInputTypingState) then) =
      _$MessageInputTypingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputTypingStateCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputTypingStateCopyWith<$Res> {
  _$MessageInputTypingStateCopyWithImpl(MessageInputTypingState _value,
      $Res Function(MessageInputTypingState) _then)
      : super(_value, (v) => _then(v as MessageInputTypingState));

  @override
  MessageInputTypingState get _value => super._value as MessageInputTypingState;
}

/// @nodoc

class _$MessageInputTypingState implements MessageInputTypingState {
  const _$MessageInputTypingState();

  @override
  String toString() {
    return 'MessageInputState.typing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MessageInputTypingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) {
    return typing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) {
    return typing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) {
    return typing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) {
    return typing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (typing != null) {
      return typing(this);
    }
    return orElse();
  }
}

abstract class MessageInputTypingState implements MessageInputState {
  const factory MessageInputTypingState() = _$MessageInputTypingState;
}

/// @nodoc
abstract class $MessageInputDismissingStateCopyWith<$Res> {
  factory $MessageInputDismissingStateCopyWith(
          MessageInputDismissingState value,
          $Res Function(MessageInputDismissingState) then) =
      _$MessageInputDismissingStateCopyWithImpl<$Res>;
  $Res call({DismissingStateData data});

  $DismissingStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MessageInputDismissingStateCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputDismissingStateCopyWith<$Res> {
  _$MessageInputDismissingStateCopyWithImpl(MessageInputDismissingState _value,
      $Res Function(MessageInputDismissingState) _then)
      : super(_value, (v) => _then(v as MessageInputDismissingState));

  @override
  MessageInputDismissingState get _value =>
      super._value as MessageInputDismissingState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(MessageInputDismissingState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DismissingStateData,
    ));
  }

  @override
  $DismissingStateDataCopyWith<$Res> get data {
    return $DismissingStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$MessageInputDismissingState implements MessageInputDismissingState {
  const _$MessageInputDismissingState(this.data);

  @override
  final DismissingStateData data;

  @override
  String toString() {
    return 'MessageInputState.dismissing(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageInputDismissingState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $MessageInputDismissingStateCopyWith<MessageInputDismissingState>
      get copyWith => _$MessageInputDismissingStateCopyWithImpl<
          MessageInputDismissingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) {
    return dismissing(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) {
    return dismissing?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (dismissing != null) {
      return dismissing(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) {
    return dismissing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) {
    return dismissing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (dismissing != null) {
      return dismissing(this);
    }
    return orElse();
  }
}

abstract class MessageInputDismissingState implements MessageInputState {
  const factory MessageInputDismissingState(DismissingStateData data) =
      _$MessageInputDismissingState;

  DismissingStateData get data;
  @JsonKey(ignore: true)
  $MessageInputDismissingStateCopyWith<MessageInputDismissingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageInputUnfocusEventCopyWith<$Res> {
  factory $MessageInputUnfocusEventCopyWith(MessageInputUnfocusEvent value,
          $Res Function(MessageInputUnfocusEvent) then) =
      _$MessageInputUnfocusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputUnfocusEventCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputUnfocusEventCopyWith<$Res> {
  _$MessageInputUnfocusEventCopyWithImpl(MessageInputUnfocusEvent _value,
      $Res Function(MessageInputUnfocusEvent) _then)
      : super(_value, (v) => _then(v as MessageInputUnfocusEvent));

  @override
  MessageInputUnfocusEvent get _value =>
      super._value as MessageInputUnfocusEvent;
}

/// @nodoc

class _$MessageInputUnfocusEvent implements MessageInputUnfocusEvent {
  const _$MessageInputUnfocusEvent();

  @override
  String toString() {
    return 'MessageInputState.unfocusEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MessageInputUnfocusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) {
    return unfocusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) {
    return unfocusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (unfocusEvent != null) {
      return unfocusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) {
    return unfocusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) {
    return unfocusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (unfocusEvent != null) {
      return unfocusEvent(this);
    }
    return orElse();
  }
}

abstract class MessageInputUnfocusEvent implements MessageInputState {
  const factory MessageInputUnfocusEvent() = _$MessageInputUnfocusEvent;
}

/// @nodoc
abstract class $MessageInputRequestFocusEventCopyWith<$Res> {
  factory $MessageInputRequestFocusEventCopyWith(
          MessageInputRequestFocusEvent value,
          $Res Function(MessageInputRequestFocusEvent) then) =
      _$MessageInputRequestFocusEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageInputRequestFocusEventCopyWithImpl<$Res>
    extends _$MessageInputStateCopyWithImpl<$Res>
    implements $MessageInputRequestFocusEventCopyWith<$Res> {
  _$MessageInputRequestFocusEventCopyWithImpl(
      MessageInputRequestFocusEvent _value,
      $Res Function(MessageInputRequestFocusEvent) _then)
      : super(_value, (v) => _then(v as MessageInputRequestFocusEvent));

  @override
  MessageInputRequestFocusEvent get _value =>
      super._value as MessageInputRequestFocusEvent;
}

/// @nodoc

class _$MessageInputRequestFocusEvent implements MessageInputRequestFocusEvent {
  const _$MessageInputRequestFocusEvent();

  @override
  String toString() {
    return 'MessageInputState.requestFocusEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageInputRequestFocusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() typing,
    required TResult Function(DismissingStateData data) dismissing,
    required TResult Function() unfocusEvent,
    required TResult Function() requestFocusEvent,
  }) {
    return requestFocusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
  }) {
    return requestFocusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? typing,
    TResult Function(DismissingStateData data)? dismissing,
    TResult Function()? unfocusEvent,
    TResult Function()? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (requestFocusEvent != null) {
      return requestFocusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInputInactiveState value) inactive,
    required TResult Function(MessageInputTypingState value) typing,
    required TResult Function(MessageInputDismissingState value) dismissing,
    required TResult Function(MessageInputUnfocusEvent value) unfocusEvent,
    required TResult Function(MessageInputRequestFocusEvent value)
        requestFocusEvent,
  }) {
    return requestFocusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
  }) {
    return requestFocusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInputInactiveState value)? inactive,
    TResult Function(MessageInputTypingState value)? typing,
    TResult Function(MessageInputDismissingState value)? dismissing,
    TResult Function(MessageInputUnfocusEvent value)? unfocusEvent,
    TResult Function(MessageInputRequestFocusEvent value)? requestFocusEvent,
    required TResult orElse(),
  }) {
    if (requestFocusEvent != null) {
      return requestFocusEvent(this);
    }
    return orElse();
  }
}

abstract class MessageInputRequestFocusEvent implements MessageInputState {
  const factory MessageInputRequestFocusEvent() =
      _$MessageInputRequestFocusEvent;
}

/// @nodoc
class _$DismissingStateDataTearOff {
  const _$DismissingStateDataTearOff();

  _DismissingStateData call(
      {required double startPosition, required double currentPosition}) {
    return _DismissingStateData(
      startPosition: startPosition,
      currentPosition: currentPosition,
    );
  }
}

/// @nodoc
const $DismissingStateData = _$DismissingStateDataTearOff();

/// @nodoc
mixin _$DismissingStateData {
  double get startPosition => throw _privateConstructorUsedError;
  double get currentPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DismissingStateDataCopyWith<DismissingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DismissingStateDataCopyWith<$Res> {
  factory $DismissingStateDataCopyWith(
          DismissingStateData value, $Res Function(DismissingStateData) then) =
      _$DismissingStateDataCopyWithImpl<$Res>;
  $Res call({double startPosition, double currentPosition});
}

/// @nodoc
class _$DismissingStateDataCopyWithImpl<$Res>
    implements $DismissingStateDataCopyWith<$Res> {
  _$DismissingStateDataCopyWithImpl(this._value, this._then);

  final DismissingStateData _value;
  // ignore: unused_field
  final $Res Function(DismissingStateData) _then;

  @override
  $Res call({
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_value.copyWith(
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as double,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DismissingStateDataCopyWith<$Res>
    implements $DismissingStateDataCopyWith<$Res> {
  factory _$DismissingStateDataCopyWith(_DismissingStateData value,
          $Res Function(_DismissingStateData) then) =
      __$DismissingStateDataCopyWithImpl<$Res>;
  @override
  $Res call({double startPosition, double currentPosition});
}

/// @nodoc
class __$DismissingStateDataCopyWithImpl<$Res>
    extends _$DismissingStateDataCopyWithImpl<$Res>
    implements _$DismissingStateDataCopyWith<$Res> {
  __$DismissingStateDataCopyWithImpl(
      _DismissingStateData _value, $Res Function(_DismissingStateData) _then)
      : super(_value, (v) => _then(v as _DismissingStateData));

  @override
  _DismissingStateData get _value => super._value as _DismissingStateData;

  @override
  $Res call({
    Object? startPosition = freezed,
    Object? currentPosition = freezed,
  }) {
    return _then(_DismissingStateData(
      startPosition: startPosition == freezed
          ? _value.startPosition
          : startPosition // ignore: cast_nullable_to_non_nullable
              as double,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DismissingStateData extends _DismissingStateData {
  const _$_DismissingStateData(
      {required this.startPosition, required this.currentPosition})
      : super._();

  @override
  final double startPosition;
  @override
  final double currentPosition;

  @override
  String toString() {
    return 'DismissingStateData(startPosition: $startPosition, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissingStateData &&
            const DeepCollectionEquality()
                .equals(other.startPosition, startPosition) &&
            const DeepCollectionEquality()
                .equals(other.currentPosition, currentPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startPosition),
      const DeepCollectionEquality().hash(currentPosition));

  @JsonKey(ignore: true)
  @override
  _$DismissingStateDataCopyWith<_DismissingStateData> get copyWith =>
      __$DismissingStateDataCopyWithImpl<_DismissingStateData>(
          this, _$identity);
}

abstract class _DismissingStateData extends DismissingStateData {
  const factory _DismissingStateData(
      {required double startPosition,
      required double currentPosition}) = _$_DismissingStateData;
  const _DismissingStateData._() : super._();

  @override
  double get startPosition;
  @override
  double get currentPosition;
  @override
  @JsonKey(ignore: true)
  _$DismissingStateDataCopyWith<_DismissingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
