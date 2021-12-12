// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'companions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CompanionsStateTearOff {
  const _$CompanionsStateTearOff();

  CompanionsInitializingState initializing() {
    return const CompanionsInitializingState();
  }

  CompanionsSubscribedState subscribed(List<User> companions) {
    return CompanionsSubscribedState(
      companions,
    );
  }
}

/// @nodoc
const $CompanionsState = _$CompanionsStateTearOff();

/// @nodoc
mixin _$CompanionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(List<User> companions) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanionsInitializingState value) initializing,
    required TResult Function(CompanionsSubscribedState value) subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanionsStateCopyWith<$Res> {
  factory $CompanionsStateCopyWith(
          CompanionsState value, $Res Function(CompanionsState) then) =
      _$CompanionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanionsStateCopyWithImpl<$Res>
    implements $CompanionsStateCopyWith<$Res> {
  _$CompanionsStateCopyWithImpl(this._value, this._then);

  final CompanionsState _value;
  // ignore: unused_field
  final $Res Function(CompanionsState) _then;
}

/// @nodoc
abstract class $CompanionsInitializingStateCopyWith<$Res> {
  factory $CompanionsInitializingStateCopyWith(
          CompanionsInitializingState value,
          $Res Function(CompanionsInitializingState) then) =
      _$CompanionsInitializingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanionsInitializingStateCopyWithImpl<$Res>
    extends _$CompanionsStateCopyWithImpl<$Res>
    implements $CompanionsInitializingStateCopyWith<$Res> {
  _$CompanionsInitializingStateCopyWithImpl(CompanionsInitializingState _value,
      $Res Function(CompanionsInitializingState) _then)
      : super(_value, (v) => _then(v as CompanionsInitializingState));

  @override
  CompanionsInitializingState get _value =>
      super._value as CompanionsInitializingState;
}

/// @nodoc

class _$CompanionsInitializingState implements CompanionsInitializingState {
  const _$CompanionsInitializingState();

  @override
  String toString() {
    return 'CompanionsState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanionsInitializingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(List<User> companions) subscribed,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
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
    required TResult Function(CompanionsInitializingState value) initializing,
    required TResult Function(CompanionsSubscribedState value) subscribed,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class CompanionsInitializingState implements CompanionsState {
  const factory CompanionsInitializingState() = _$CompanionsInitializingState;
}

/// @nodoc
abstract class $CompanionsSubscribedStateCopyWith<$Res> {
  factory $CompanionsSubscribedStateCopyWith(CompanionsSubscribedState value,
          $Res Function(CompanionsSubscribedState) then) =
      _$CompanionsSubscribedStateCopyWithImpl<$Res>;
  $Res call({List<User> companions});
}

/// @nodoc
class _$CompanionsSubscribedStateCopyWithImpl<$Res>
    extends _$CompanionsStateCopyWithImpl<$Res>
    implements $CompanionsSubscribedStateCopyWith<$Res> {
  _$CompanionsSubscribedStateCopyWithImpl(CompanionsSubscribedState _value,
      $Res Function(CompanionsSubscribedState) _then)
      : super(_value, (v) => _then(v as CompanionsSubscribedState));

  @override
  CompanionsSubscribedState get _value =>
      super._value as CompanionsSubscribedState;

  @override
  $Res call({
    Object? companions = freezed,
  }) {
    return _then(CompanionsSubscribedState(
      companions == freezed
          ? _value.companions
          : companions // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$CompanionsSubscribedState implements CompanionsSubscribedState {
  const _$CompanionsSubscribedState(this.companions);

  @override
  final List<User> companions;

  @override
  String toString() {
    return 'CompanionsState.subscribed(companions: $companions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanionsSubscribedState &&
            const DeepCollectionEquality()
                .equals(other.companions, companions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(companions));

  @JsonKey(ignore: true)
  @override
  $CompanionsSubscribedStateCopyWith<CompanionsSubscribedState> get copyWith =>
      _$CompanionsSubscribedStateCopyWithImpl<CompanionsSubscribedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function(List<User> companions) subscribed,
  }) {
    return subscribed(companions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
  }) {
    return subscribed?.call(companions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function(List<User> companions)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(companions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanionsInitializingState value) initializing,
    required TResult Function(CompanionsSubscribedState value) subscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanionsInitializingState value)? initializing,
    TResult Function(CompanionsSubscribedState value)? subscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class CompanionsSubscribedState implements CompanionsState {
  const factory CompanionsSubscribedState(List<User> companions) =
      _$CompanionsSubscribedState;

  List<User> get companions;
  @JsonKey(ignore: true)
  $CompanionsSubscribedStateCopyWith<CompanionsSubscribedState> get copyWith =>
      throw _privateConstructorUsedError;
}
