// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConversationStateTearOff {
  const _$ConversationStateTearOff();

  ConversationNotInitializedState notInitialized() {
    return const ConversationNotInitializedState();
  }

  ConversationLoadingState loading() {
    return const ConversationLoadingState();
  }

  ConversationUpdatingState updating(ConversationStateData data) {
    return ConversationUpdatingState(
      data,
    );
  }

  ConversationLiveState live(ConversationStateData data) {
    return ConversationLiveState(
      data,
    );
  }

  ConversationNewMessagesEvent newMessagesEvent(
      Map<DateTime, List<int>> locations) {
    return ConversationNewMessagesEvent(
      locations,
    );
  }

  ConversationRemovedMessagesEvent removedMessagesEvent(
      Map<DateTime, List<int>> locations) {
    return ConversationRemovedMessagesEvent(
      locations,
    );
  }

  ConversationQuotedEvent userQuotedEvent() {
    return const ConversationQuotedEvent();
  }
}

/// @nodoc
const $ConversationState = _$ConversationStateTearOff();

/// @nodoc
mixin _$ConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  final ConversationState _value;
  // ignore: unused_field
  final $Res Function(ConversationState) _then;
}

/// @nodoc
abstract class $ConversationNotInitializedStateCopyWith<$Res> {
  factory $ConversationNotInitializedStateCopyWith(
          ConversationNotInitializedState value,
          $Res Function(ConversationNotInitializedState) then) =
      _$ConversationNotInitializedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationNotInitializedStateCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationNotInitializedStateCopyWith<$Res> {
  _$ConversationNotInitializedStateCopyWithImpl(
      ConversationNotInitializedState _value,
      $Res Function(ConversationNotInitializedState) _then)
      : super(_value, (v) => _then(v as ConversationNotInitializedState));

  @override
  ConversationNotInitializedState get _value =>
      super._value as ConversationNotInitializedState;
}

/// @nodoc

class _$ConversationNotInitializedState
    implements ConversationNotInitializedState {
  const _$ConversationNotInitializedState();

  @override
  String toString() {
    return 'ConversationState.notInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationNotInitializedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return notInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return notInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class ConversationNotInitializedState implements ConversationState {
  const factory ConversationNotInitializedState() =
      _$ConversationNotInitializedState;
}

/// @nodoc
abstract class $ConversationLoadingStateCopyWith<$Res> {
  factory $ConversationLoadingStateCopyWith(ConversationLoadingState value,
          $Res Function(ConversationLoadingState) then) =
      _$ConversationLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationLoadingStateCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationLoadingStateCopyWith<$Res> {
  _$ConversationLoadingStateCopyWithImpl(ConversationLoadingState _value,
      $Res Function(ConversationLoadingState) _then)
      : super(_value, (v) => _then(v as ConversationLoadingState));

  @override
  ConversationLoadingState get _value =>
      super._value as ConversationLoadingState;
}

/// @nodoc

class _$ConversationLoadingState implements ConversationLoadingState {
  const _$ConversationLoadingState();

  @override
  String toString() {
    return 'ConversationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConversationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
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
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConversationLoadingState implements ConversationState {
  const factory ConversationLoadingState() = _$ConversationLoadingState;
}

/// @nodoc
abstract class $ConversationUpdatingStateCopyWith<$Res> {
  factory $ConversationUpdatingStateCopyWith(ConversationUpdatingState value,
          $Res Function(ConversationUpdatingState) then) =
      _$ConversationUpdatingStateCopyWithImpl<$Res>;
  $Res call({ConversationStateData data});

  $ConversationStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ConversationUpdatingStateCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationUpdatingStateCopyWith<$Res> {
  _$ConversationUpdatingStateCopyWithImpl(ConversationUpdatingState _value,
      $Res Function(ConversationUpdatingState) _then)
      : super(_value, (v) => _then(v as ConversationUpdatingState));

  @override
  ConversationUpdatingState get _value =>
      super._value as ConversationUpdatingState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ConversationUpdatingState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationStateData,
    ));
  }

  @override
  $ConversationStateDataCopyWith<$Res> get data {
    return $ConversationStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ConversationUpdatingState implements ConversationUpdatingState {
  const _$ConversationUpdatingState(this.data);

  @override
  final ConversationStateData data;

  @override
  String toString() {
    return 'ConversationState.updating(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationUpdatingState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ConversationUpdatingStateCopyWith<ConversationUpdatingState> get copyWith =>
      _$ConversationUpdatingStateCopyWithImpl<ConversationUpdatingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return updating(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return updating?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class ConversationUpdatingState implements ConversationState {
  const factory ConversationUpdatingState(ConversationStateData data) =
      _$ConversationUpdatingState;

  ConversationStateData get data;
  @JsonKey(ignore: true)
  $ConversationUpdatingStateCopyWith<ConversationUpdatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationLiveStateCopyWith<$Res> {
  factory $ConversationLiveStateCopyWith(ConversationLiveState value,
          $Res Function(ConversationLiveState) then) =
      _$ConversationLiveStateCopyWithImpl<$Res>;
  $Res call({ConversationStateData data});

  $ConversationStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ConversationLiveStateCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationLiveStateCopyWith<$Res> {
  _$ConversationLiveStateCopyWithImpl(
      ConversationLiveState _value, $Res Function(ConversationLiveState) _then)
      : super(_value, (v) => _then(v as ConversationLiveState));

  @override
  ConversationLiveState get _value => super._value as ConversationLiveState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ConversationLiveState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ConversationStateData,
    ));
  }

  @override
  $ConversationStateDataCopyWith<$Res> get data {
    return $ConversationStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ConversationLiveState implements ConversationLiveState {
  const _$ConversationLiveState(this.data);

  @override
  final ConversationStateData data;

  @override
  String toString() {
    return 'ConversationState.live(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationLiveState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ConversationLiveStateCopyWith<ConversationLiveState> get copyWith =>
      _$ConversationLiveStateCopyWithImpl<ConversationLiveState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return live(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return live?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class ConversationLiveState implements ConversationState {
  const factory ConversationLiveState(ConversationStateData data) =
      _$ConversationLiveState;

  ConversationStateData get data;
  @JsonKey(ignore: true)
  $ConversationLiveStateCopyWith<ConversationLiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationNewMessagesEventCopyWith<$Res> {
  factory $ConversationNewMessagesEventCopyWith(
          ConversationNewMessagesEvent value,
          $Res Function(ConversationNewMessagesEvent) then) =
      _$ConversationNewMessagesEventCopyWithImpl<$Res>;
  $Res call({Map<DateTime, List<int>> locations});
}

/// @nodoc
class _$ConversationNewMessagesEventCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationNewMessagesEventCopyWith<$Res> {
  _$ConversationNewMessagesEventCopyWithImpl(
      ConversationNewMessagesEvent _value,
      $Res Function(ConversationNewMessagesEvent) _then)
      : super(_value, (v) => _then(v as ConversationNewMessagesEvent));

  @override
  ConversationNewMessagesEvent get _value =>
      super._value as ConversationNewMessagesEvent;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(ConversationNewMessagesEvent(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<int>>,
    ));
  }
}

/// @nodoc

class _$ConversationNewMessagesEvent implements ConversationNewMessagesEvent {
  const _$ConversationNewMessagesEvent(this.locations);

  @override
  final Map<DateTime, List<int>> locations;

  @override
  String toString() {
    return 'ConversationState.newMessagesEvent(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationNewMessagesEvent &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  $ConversationNewMessagesEventCopyWith<ConversationNewMessagesEvent>
      get copyWith => _$ConversationNewMessagesEventCopyWithImpl<
          ConversationNewMessagesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return newMessagesEvent(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return newMessagesEvent?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (newMessagesEvent != null) {
      return newMessagesEvent(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return newMessagesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return newMessagesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (newMessagesEvent != null) {
      return newMessagesEvent(this);
    }
    return orElse();
  }
}

abstract class ConversationNewMessagesEvent implements ConversationState {
  const factory ConversationNewMessagesEvent(
      Map<DateTime, List<int>> locations) = _$ConversationNewMessagesEvent;

  Map<DateTime, List<int>> get locations;
  @JsonKey(ignore: true)
  $ConversationNewMessagesEventCopyWith<ConversationNewMessagesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationRemovedMessagesEventCopyWith<$Res> {
  factory $ConversationRemovedMessagesEventCopyWith(
          ConversationRemovedMessagesEvent value,
          $Res Function(ConversationRemovedMessagesEvent) then) =
      _$ConversationRemovedMessagesEventCopyWithImpl<$Res>;
  $Res call({Map<DateTime, List<int>> locations});
}

/// @nodoc
class _$ConversationRemovedMessagesEventCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationRemovedMessagesEventCopyWith<$Res> {
  _$ConversationRemovedMessagesEventCopyWithImpl(
      ConversationRemovedMessagesEvent _value,
      $Res Function(ConversationRemovedMessagesEvent) _then)
      : super(_value, (v) => _then(v as ConversationRemovedMessagesEvent));

  @override
  ConversationRemovedMessagesEvent get _value =>
      super._value as ConversationRemovedMessagesEvent;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(ConversationRemovedMessagesEvent(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<int>>,
    ));
  }
}

/// @nodoc

class _$ConversationRemovedMessagesEvent
    implements ConversationRemovedMessagesEvent {
  const _$ConversationRemovedMessagesEvent(this.locations);

  @override
  final Map<DateTime, List<int>> locations;

  @override
  String toString() {
    return 'ConversationState.removedMessagesEvent(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConversationRemovedMessagesEvent &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  $ConversationRemovedMessagesEventCopyWith<ConversationRemovedMessagesEvent>
      get copyWith => _$ConversationRemovedMessagesEventCopyWithImpl<
          ConversationRemovedMessagesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return removedMessagesEvent(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return removedMessagesEvent?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (removedMessagesEvent != null) {
      return removedMessagesEvent(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return removedMessagesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return removedMessagesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (removedMessagesEvent != null) {
      return removedMessagesEvent(this);
    }
    return orElse();
  }
}

abstract class ConversationRemovedMessagesEvent implements ConversationState {
  const factory ConversationRemovedMessagesEvent(
      Map<DateTime, List<int>> locations) = _$ConversationRemovedMessagesEvent;

  Map<DateTime, List<int>> get locations;
  @JsonKey(ignore: true)
  $ConversationRemovedMessagesEventCopyWith<ConversationRemovedMessagesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationQuotedEventCopyWith<$Res> {
  factory $ConversationQuotedEventCopyWith(ConversationQuotedEvent value,
          $Res Function(ConversationQuotedEvent) then) =
      _$ConversationQuotedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationQuotedEventCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationQuotedEventCopyWith<$Res> {
  _$ConversationQuotedEventCopyWithImpl(ConversationQuotedEvent _value,
      $Res Function(ConversationQuotedEvent) _then)
      : super(_value, (v) => _then(v as ConversationQuotedEvent));

  @override
  ConversationQuotedEvent get _value => super._value as ConversationQuotedEvent;
}

/// @nodoc

class _$ConversationQuotedEvent implements ConversationQuotedEvent {
  const _$ConversationQuotedEvent();

  @override
  String toString() {
    return 'ConversationState.userQuotedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConversationQuotedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() loading,
    required TResult Function(ConversationStateData data) updating,
    required TResult Function(ConversationStateData data) live,
    required TResult Function(Map<DateTime, List<int>> locations)
        newMessagesEvent,
    required TResult Function(Map<DateTime, List<int>> locations)
        removedMessagesEvent,
    required TResult Function() userQuotedEvent,
  }) {
    return userQuotedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
  }) {
    return userQuotedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? loading,
    TResult Function(ConversationStateData data)? updating,
    TResult Function(ConversationStateData data)? live,
    TResult Function(Map<DateTime, List<int>> locations)? newMessagesEvent,
    TResult Function(Map<DateTime, List<int>> locations)? removedMessagesEvent,
    TResult Function()? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (userQuotedEvent != null) {
      return userQuotedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConversationNotInitializedState value)
        notInitialized,
    required TResult Function(ConversationLoadingState value) loading,
    required TResult Function(ConversationUpdatingState value) updating,
    required TResult Function(ConversationLiveState value) live,
    required TResult Function(ConversationNewMessagesEvent value)
        newMessagesEvent,
    required TResult Function(ConversationRemovedMessagesEvent value)
        removedMessagesEvent,
    required TResult Function(ConversationQuotedEvent value) userQuotedEvent,
  }) {
    return userQuotedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
  }) {
    return userQuotedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConversationNotInitializedState value)? notInitialized,
    TResult Function(ConversationLoadingState value)? loading,
    TResult Function(ConversationUpdatingState value)? updating,
    TResult Function(ConversationLiveState value)? live,
    TResult Function(ConversationNewMessagesEvent value)? newMessagesEvent,
    TResult Function(ConversationRemovedMessagesEvent value)?
        removedMessagesEvent,
    TResult Function(ConversationQuotedEvent value)? userQuotedEvent,
    required TResult orElse(),
  }) {
    if (userQuotedEvent != null) {
      return userQuotedEvent(this);
    }
    return orElse();
  }
}

abstract class ConversationQuotedEvent implements ConversationState {
  const factory ConversationQuotedEvent() = _$ConversationQuotedEvent;
}
