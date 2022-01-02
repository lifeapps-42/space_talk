// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'swipe_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwipeStateTearOff {
  const _$SwipeStateTearOff();

  SwipeStopState stop() {
    return const SwipeStopState();
  }

  SwipeInProgressState inProgress(SwipeData data) {
    return SwipeInProgressState(
      data,
    );
  }

  SwipeDoneEvent doneEvent(SwipeData data) {
    return SwipeDoneEvent(
      data,
    );
  }
}

/// @nodoc
const $SwipeState = _$SwipeStateTearOff();

/// @nodoc
mixin _$SwipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(SwipeData data) inProgress,
    required TResult Function(SwipeData data) doneEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwipeStopState value) stop,
    required TResult Function(SwipeInProgressState value) inProgress,
    required TResult Function(SwipeDoneEvent value) doneEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeStateCopyWith<$Res> {
  factory $SwipeStateCopyWith(
          SwipeState value, $Res Function(SwipeState) then) =
      _$SwipeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwipeStateCopyWithImpl<$Res> implements $SwipeStateCopyWith<$Res> {
  _$SwipeStateCopyWithImpl(this._value, this._then);

  final SwipeState _value;
  // ignore: unused_field
  final $Res Function(SwipeState) _then;
}

/// @nodoc
abstract class $SwipeStopStateCopyWith<$Res> {
  factory $SwipeStopStateCopyWith(
          SwipeStopState value, $Res Function(SwipeStopState) then) =
      _$SwipeStopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwipeStopStateCopyWithImpl<$Res> extends _$SwipeStateCopyWithImpl<$Res>
    implements $SwipeStopStateCopyWith<$Res> {
  _$SwipeStopStateCopyWithImpl(
      SwipeStopState _value, $Res Function(SwipeStopState) _then)
      : super(_value, (v) => _then(v as SwipeStopState));

  @override
  SwipeStopState get _value => super._value as SwipeStopState;
}

/// @nodoc

class _$SwipeStopState implements SwipeStopState {
  const _$SwipeStopState();

  @override
  String toString() {
    return 'SwipeState.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SwipeStopState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(SwipeData data) inProgress,
    required TResult Function(SwipeData data) doneEvent,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwipeStopState value) stop,
    required TResult Function(SwipeInProgressState value) inProgress,
    required TResult Function(SwipeDoneEvent value) doneEvent,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class SwipeStopState implements SwipeState {
  const factory SwipeStopState() = _$SwipeStopState;
}

/// @nodoc
abstract class $SwipeInProgressStateCopyWith<$Res> {
  factory $SwipeInProgressStateCopyWith(SwipeInProgressState value,
          $Res Function(SwipeInProgressState) then) =
      _$SwipeInProgressStateCopyWithImpl<$Res>;
  $Res call({SwipeData data});

  $SwipeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SwipeInProgressStateCopyWithImpl<$Res>
    extends _$SwipeStateCopyWithImpl<$Res>
    implements $SwipeInProgressStateCopyWith<$Res> {
  _$SwipeInProgressStateCopyWithImpl(
      SwipeInProgressState _value, $Res Function(SwipeInProgressState) _then)
      : super(_value, (v) => _then(v as SwipeInProgressState));

  @override
  SwipeInProgressState get _value => super._value as SwipeInProgressState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SwipeInProgressState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SwipeData,
    ));
  }

  @override
  $SwipeDataCopyWith<$Res> get data {
    return $SwipeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SwipeInProgressState implements SwipeInProgressState {
  const _$SwipeInProgressState(this.data);

  @override
  final SwipeData data;

  @override
  String toString() {
    return 'SwipeState.inProgress(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwipeInProgressState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SwipeInProgressStateCopyWith<SwipeInProgressState> get copyWith =>
      _$SwipeInProgressStateCopyWithImpl<SwipeInProgressState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(SwipeData data) inProgress,
    required TResult Function(SwipeData data) doneEvent,
  }) {
    return inProgress(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
  }) {
    return inProgress?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwipeStopState value) stop,
    required TResult Function(SwipeInProgressState value) inProgress,
    required TResult Function(SwipeDoneEvent value) doneEvent,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SwipeInProgressState implements SwipeState {
  const factory SwipeInProgressState(SwipeData data) = _$SwipeInProgressState;

  SwipeData get data;
  @JsonKey(ignore: true)
  $SwipeInProgressStateCopyWith<SwipeInProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeDoneEventCopyWith<$Res> {
  factory $SwipeDoneEventCopyWith(
          SwipeDoneEvent value, $Res Function(SwipeDoneEvent) then) =
      _$SwipeDoneEventCopyWithImpl<$Res>;
  $Res call({SwipeData data});

  $SwipeDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SwipeDoneEventCopyWithImpl<$Res> extends _$SwipeStateCopyWithImpl<$Res>
    implements $SwipeDoneEventCopyWith<$Res> {
  _$SwipeDoneEventCopyWithImpl(
      SwipeDoneEvent _value, $Res Function(SwipeDoneEvent) _then)
      : super(_value, (v) => _then(v as SwipeDoneEvent));

  @override
  SwipeDoneEvent get _value => super._value as SwipeDoneEvent;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(SwipeDoneEvent(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SwipeData,
    ));
  }

  @override
  $SwipeDataCopyWith<$Res> get data {
    return $SwipeDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SwipeDoneEvent implements SwipeDoneEvent {
  const _$SwipeDoneEvent(this.data);

  @override
  final SwipeData data;

  @override
  String toString() {
    return 'SwipeState.doneEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwipeDoneEvent &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SwipeDoneEventCopyWith<SwipeDoneEvent> get copyWith =>
      _$SwipeDoneEventCopyWithImpl<SwipeDoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() stop,
    required TResult Function(SwipeData data) inProgress,
    required TResult Function(SwipeData data) doneEvent,
  }) {
    return doneEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
  }) {
    return doneEvent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? stop,
    TResult Function(SwipeData data)? inProgress,
    TResult Function(SwipeData data)? doneEvent,
    required TResult orElse(),
  }) {
    if (doneEvent != null) {
      return doneEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwipeStopState value) stop,
    required TResult Function(SwipeInProgressState value) inProgress,
    required TResult Function(SwipeDoneEvent value) doneEvent,
  }) {
    return doneEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
  }) {
    return doneEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwipeStopState value)? stop,
    TResult Function(SwipeInProgressState value)? inProgress,
    TResult Function(SwipeDoneEvent value)? doneEvent,
    required TResult orElse(),
  }) {
    if (doneEvent != null) {
      return doneEvent(this);
    }
    return orElse();
  }
}

abstract class SwipeDoneEvent implements SwipeState {
  const factory SwipeDoneEvent(SwipeData data) = _$SwipeDoneEvent;

  SwipeData get data;
  @JsonKey(ignore: true)
  $SwipeDoneEventCopyWith<SwipeDoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SwipeDataTearOff {
  const _$SwipeDataTearOff();

  _SwipeData call(
      {required double delta,
      required double start,
      required double crossAxisStart,
      required double crossAxisDelta}) {
    return _SwipeData(
      delta: delta,
      start: start,
      crossAxisStart: crossAxisStart,
      crossAxisDelta: crossAxisDelta,
    );
  }
}

/// @nodoc
const $SwipeData = _$SwipeDataTearOff();

/// @nodoc
mixin _$SwipeData {
  double get delta => throw _privateConstructorUsedError;
  double get start => throw _privateConstructorUsedError;
  double get crossAxisStart => throw _privateConstructorUsedError;
  double get crossAxisDelta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwipeDataCopyWith<SwipeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeDataCopyWith<$Res> {
  factory $SwipeDataCopyWith(SwipeData value, $Res Function(SwipeData) then) =
      _$SwipeDataCopyWithImpl<$Res>;
  $Res call(
      {double delta,
      double start,
      double crossAxisStart,
      double crossAxisDelta});
}

/// @nodoc
class _$SwipeDataCopyWithImpl<$Res> implements $SwipeDataCopyWith<$Res> {
  _$SwipeDataCopyWithImpl(this._value, this._then);

  final SwipeData _value;
  // ignore: unused_field
  final $Res Function(SwipeData) _then;

  @override
  $Res call({
    Object? delta = freezed,
    Object? start = freezed,
    Object? crossAxisStart = freezed,
    Object? crossAxisDelta = freezed,
  }) {
    return _then(_value.copyWith(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      crossAxisStart: crossAxisStart == freezed
          ? _value.crossAxisStart
          : crossAxisStart // ignore: cast_nullable_to_non_nullable
              as double,
      crossAxisDelta: crossAxisDelta == freezed
          ? _value.crossAxisDelta
          : crossAxisDelta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SwipeDataCopyWith<$Res> implements $SwipeDataCopyWith<$Res> {
  factory _$SwipeDataCopyWith(
          _SwipeData value, $Res Function(_SwipeData) then) =
      __$SwipeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {double delta,
      double start,
      double crossAxisStart,
      double crossAxisDelta});
}

/// @nodoc
class __$SwipeDataCopyWithImpl<$Res> extends _$SwipeDataCopyWithImpl<$Res>
    implements _$SwipeDataCopyWith<$Res> {
  __$SwipeDataCopyWithImpl(_SwipeData _value, $Res Function(_SwipeData) _then)
      : super(_value, (v) => _then(v as _SwipeData));

  @override
  _SwipeData get _value => super._value as _SwipeData;

  @override
  $Res call({
    Object? delta = freezed,
    Object? start = freezed,
    Object? crossAxisStart = freezed,
    Object? crossAxisDelta = freezed,
  }) {
    return _then(_SwipeData(
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as double,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      crossAxisStart: crossAxisStart == freezed
          ? _value.crossAxisStart
          : crossAxisStart // ignore: cast_nullable_to_non_nullable
              as double,
      crossAxisDelta: crossAxisDelta == freezed
          ? _value.crossAxisDelta
          : crossAxisDelta // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SwipeData implements _SwipeData {
  const _$_SwipeData(
      {required this.delta,
      required this.start,
      required this.crossAxisStart,
      required this.crossAxisDelta});

  @override
  final double delta;
  @override
  final double start;
  @override
  final double crossAxisStart;
  @override
  final double crossAxisDelta;

  @override
  String toString() {
    return 'SwipeData(delta: $delta, start: $start, crossAxisStart: $crossAxisStart, crossAxisDelta: $crossAxisDelta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwipeData &&
            const DeepCollectionEquality().equals(other.delta, delta) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisStart, crossAxisStart) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisDelta, crossAxisDelta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(delta),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(crossAxisStart),
      const DeepCollectionEquality().hash(crossAxisDelta));

  @JsonKey(ignore: true)
  @override
  _$SwipeDataCopyWith<_SwipeData> get copyWith =>
      __$SwipeDataCopyWithImpl<_SwipeData>(this, _$identity);
}

abstract class _SwipeData implements SwipeData {
  const factory _SwipeData(
      {required double delta,
      required double start,
      required double crossAxisStart,
      required double crossAxisDelta}) = _$_SwipeData;

  @override
  double get delta;
  @override
  double get start;
  @override
  double get crossAxisStart;
  @override
  double get crossAxisDelta;
  @override
  @JsonKey(ignore: true)
  _$SwipeDataCopyWith<_SwipeData> get copyWith =>
      throw _privateConstructorUsedError;
}
