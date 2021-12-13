// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'find_companion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindCompanionStateTearOff {
  const _$FindCompanionStateTearOff();

  FindCompanionReadyState ready() {
    return const FindCompanionReadyState();
  }

  FindCompanionSearchingState searching(PhoneNumber phone) {
    return FindCompanionSearchingState(
      phone,
    );
  }

  FindCompanionFoundState found(User companion) {
    return FindCompanionFoundState(
      companion,
    );
  }

  FindCompanionNoSuchUserState noSuchUser() {
    return const FindCompanionNoSuchUserState();
  }
}

/// @nodoc
const $FindCompanionState = _$FindCompanionStateTearOff();

/// @nodoc
mixin _$FindCompanionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(PhoneNumber phone) searching,
    required TResult Function(User companion) found,
    required TResult Function() noSuchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindCompanionReadyState value) ready,
    required TResult Function(FindCompanionSearchingState value) searching,
    required TResult Function(FindCompanionFoundState value) found,
    required TResult Function(FindCompanionNoSuchUserState value) noSuchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindCompanionStateCopyWith<$Res> {
  factory $FindCompanionStateCopyWith(
          FindCompanionState value, $Res Function(FindCompanionState) then) =
      _$FindCompanionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindCompanionStateCopyWithImpl<$Res>
    implements $FindCompanionStateCopyWith<$Res> {
  _$FindCompanionStateCopyWithImpl(this._value, this._then);

  final FindCompanionState _value;
  // ignore: unused_field
  final $Res Function(FindCompanionState) _then;
}

/// @nodoc
abstract class $FindCompanionReadyStateCopyWith<$Res> {
  factory $FindCompanionReadyStateCopyWith(FindCompanionReadyState value,
          $Res Function(FindCompanionReadyState) then) =
      _$FindCompanionReadyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindCompanionReadyStateCopyWithImpl<$Res>
    extends _$FindCompanionStateCopyWithImpl<$Res>
    implements $FindCompanionReadyStateCopyWith<$Res> {
  _$FindCompanionReadyStateCopyWithImpl(FindCompanionReadyState _value,
      $Res Function(FindCompanionReadyState) _then)
      : super(_value, (v) => _then(v as FindCompanionReadyState));

  @override
  FindCompanionReadyState get _value => super._value as FindCompanionReadyState;
}

/// @nodoc

class _$FindCompanionReadyState implements FindCompanionReadyState {
  const _$FindCompanionReadyState();

  @override
  String toString() {
    return 'FindCompanionState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FindCompanionReadyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(PhoneNumber phone) searching,
    required TResult Function(User companion) found,
    required TResult Function() noSuchUser,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindCompanionReadyState value) ready,
    required TResult Function(FindCompanionSearchingState value) searching,
    required TResult Function(FindCompanionFoundState value) found,
    required TResult Function(FindCompanionNoSuchUserState value) noSuchUser,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class FindCompanionReadyState implements FindCompanionState {
  const factory FindCompanionReadyState() = _$FindCompanionReadyState;
}

/// @nodoc
abstract class $FindCompanionSearchingStateCopyWith<$Res> {
  factory $FindCompanionSearchingStateCopyWith(
          FindCompanionSearchingState value,
          $Res Function(FindCompanionSearchingState) then) =
      _$FindCompanionSearchingStateCopyWithImpl<$Res>;
  $Res call({PhoneNumber phone});

  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class _$FindCompanionSearchingStateCopyWithImpl<$Res>
    extends _$FindCompanionStateCopyWithImpl<$Res>
    implements $FindCompanionSearchingStateCopyWith<$Res> {
  _$FindCompanionSearchingStateCopyWithImpl(FindCompanionSearchingState _value,
      $Res Function(FindCompanionSearchingState) _then)
      : super(_value, (v) => _then(v as FindCompanionSearchingState));

  @override
  FindCompanionSearchingState get _value =>
      super._value as FindCompanionSearchingState;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(FindCompanionSearchingState(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }

  @override
  $PhoneNumberCopyWith<$Res> get phone {
    return $PhoneNumberCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value));
    });
  }
}

/// @nodoc

class _$FindCompanionSearchingState implements FindCompanionSearchingState {
  const _$FindCompanionSearchingState(this.phone);

  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'FindCompanionState.searching(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindCompanionSearchingState &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $FindCompanionSearchingStateCopyWith<FindCompanionSearchingState>
      get copyWith => _$FindCompanionSearchingStateCopyWithImpl<
          FindCompanionSearchingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(PhoneNumber phone) searching,
    required TResult Function(User companion) found,
    required TResult Function() noSuchUser,
  }) {
    return searching(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
  }) {
    return searching?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindCompanionReadyState value) ready,
    required TResult Function(FindCompanionSearchingState value) searching,
    required TResult Function(FindCompanionFoundState value) found,
    required TResult Function(FindCompanionNoSuchUserState value) noSuchUser,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class FindCompanionSearchingState implements FindCompanionState {
  const factory FindCompanionSearchingState(PhoneNumber phone) =
      _$FindCompanionSearchingState;

  PhoneNumber get phone;
  @JsonKey(ignore: true)
  $FindCompanionSearchingStateCopyWith<FindCompanionSearchingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindCompanionFoundStateCopyWith<$Res> {
  factory $FindCompanionFoundStateCopyWith(FindCompanionFoundState value,
          $Res Function(FindCompanionFoundState) then) =
      _$FindCompanionFoundStateCopyWithImpl<$Res>;
  $Res call({User companion});

  $UserCopyWith<$Res> get companion;
}

/// @nodoc
class _$FindCompanionFoundStateCopyWithImpl<$Res>
    extends _$FindCompanionStateCopyWithImpl<$Res>
    implements $FindCompanionFoundStateCopyWith<$Res> {
  _$FindCompanionFoundStateCopyWithImpl(FindCompanionFoundState _value,
      $Res Function(FindCompanionFoundState) _then)
      : super(_value, (v) => _then(v as FindCompanionFoundState));

  @override
  FindCompanionFoundState get _value => super._value as FindCompanionFoundState;

  @override
  $Res call({
    Object? companion = freezed,
  }) {
    return _then(FindCompanionFoundState(
      companion == freezed
          ? _value.companion
          : companion // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get companion {
    return $UserCopyWith<$Res>(_value.companion, (value) {
      return _then(_value.copyWith(companion: value));
    });
  }
}

/// @nodoc

class _$FindCompanionFoundState implements FindCompanionFoundState {
  const _$FindCompanionFoundState(this.companion);

  @override
  final User companion;

  @override
  String toString() {
    return 'FindCompanionState.found(companion: $companion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindCompanionFoundState &&
            const DeepCollectionEquality().equals(other.companion, companion));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(companion));

  @JsonKey(ignore: true)
  @override
  $FindCompanionFoundStateCopyWith<FindCompanionFoundState> get copyWith =>
      _$FindCompanionFoundStateCopyWithImpl<FindCompanionFoundState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(PhoneNumber phone) searching,
    required TResult Function(User companion) found,
    required TResult Function() noSuchUser,
  }) {
    return found(companion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
  }) {
    return found?.call(companion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(companion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindCompanionReadyState value) ready,
    required TResult Function(FindCompanionSearchingState value) searching,
    required TResult Function(FindCompanionFoundState value) found,
    required TResult Function(FindCompanionNoSuchUserState value) noSuchUser,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class FindCompanionFoundState implements FindCompanionState {
  const factory FindCompanionFoundState(User companion) =
      _$FindCompanionFoundState;

  User get companion;
  @JsonKey(ignore: true)
  $FindCompanionFoundStateCopyWith<FindCompanionFoundState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindCompanionNoSuchUserStateCopyWith<$Res> {
  factory $FindCompanionNoSuchUserStateCopyWith(
          FindCompanionNoSuchUserState value,
          $Res Function(FindCompanionNoSuchUserState) then) =
      _$FindCompanionNoSuchUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindCompanionNoSuchUserStateCopyWithImpl<$Res>
    extends _$FindCompanionStateCopyWithImpl<$Res>
    implements $FindCompanionNoSuchUserStateCopyWith<$Res> {
  _$FindCompanionNoSuchUserStateCopyWithImpl(
      FindCompanionNoSuchUserState _value,
      $Res Function(FindCompanionNoSuchUserState) _then)
      : super(_value, (v) => _then(v as FindCompanionNoSuchUserState));

  @override
  FindCompanionNoSuchUserState get _value =>
      super._value as FindCompanionNoSuchUserState;
}

/// @nodoc

class _$FindCompanionNoSuchUserState implements FindCompanionNoSuchUserState {
  const _$FindCompanionNoSuchUserState();

  @override
  String toString() {
    return 'FindCompanionState.noSuchUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FindCompanionNoSuchUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(PhoneNumber phone) searching,
    required TResult Function(User companion) found,
    required TResult Function() noSuchUser,
  }) {
    return noSuchUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
  }) {
    return noSuchUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(PhoneNumber phone)? searching,
    TResult Function(User companion)? found,
    TResult Function()? noSuchUser,
    required TResult orElse(),
  }) {
    if (noSuchUser != null) {
      return noSuchUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindCompanionReadyState value) ready,
    required TResult Function(FindCompanionSearchingState value) searching,
    required TResult Function(FindCompanionFoundState value) found,
    required TResult Function(FindCompanionNoSuchUserState value) noSuchUser,
  }) {
    return noSuchUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
  }) {
    return noSuchUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindCompanionReadyState value)? ready,
    TResult Function(FindCompanionSearchingState value)? searching,
    TResult Function(FindCompanionFoundState value)? found,
    TResult Function(FindCompanionNoSuchUserState value)? noSuchUser,
    required TResult orElse(),
  }) {
    if (noSuchUser != null) {
      return noSuchUser(this);
    }
    return orElse();
  }
}

abstract class FindCompanionNoSuchUserState implements FindCompanionState {
  const factory FindCompanionNoSuchUserState() = _$FindCompanionNoSuchUserState;
}
