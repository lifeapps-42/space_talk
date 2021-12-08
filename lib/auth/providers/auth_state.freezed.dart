// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthNotAuthenticatedState notAuthenticated() {
    return const AuthNotAuthenticatedState();
  }

  AuthOtpRequestedState otpRequested(PhoneNumber phone) {
    return AuthOtpRequestedState(
      phone,
    );
  }

  AuthOtpSentState otpSent(String verificationId) {
    return AuthOtpSentState(
      verificationId,
    );
  }

  AuthOtpSubmittedState otpSubmited() {
    return const AuthOtpSubmittedState();
  }

  AuthAuthenticatedState authenticated(UserCredential userCreds) {
    return AuthAuthenticatedState(
      userCreds,
    );
  }

  AuthErrorEvent authErrorEvenr(String error) {
    return AuthErrorEvent(
      error,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthNotAuthenticatedStateCopyWith<$Res> {
  factory $AuthNotAuthenticatedStateCopyWith(AuthNotAuthenticatedState value,
          $Res Function(AuthNotAuthenticatedState) then) =
      _$AuthNotAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthNotAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthNotAuthenticatedStateCopyWith<$Res> {
  _$AuthNotAuthenticatedStateCopyWithImpl(AuthNotAuthenticatedState _value,
      $Res Function(AuthNotAuthenticatedState) _then)
      : super(_value, (v) => _then(v as AuthNotAuthenticatedState));

  @override
  AuthNotAuthenticatedState get _value =>
      super._value as AuthNotAuthenticatedState;
}

/// @nodoc

class _$AuthNotAuthenticatedState implements AuthNotAuthenticatedState {
  const _$AuthNotAuthenticatedState();

  @override
  String toString() {
    return 'AuthState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthNotAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthNotAuthenticatedState implements AuthState {
  const factory AuthNotAuthenticatedState() = _$AuthNotAuthenticatedState;
}

/// @nodoc
abstract class $AuthOtpRequestedStateCopyWith<$Res> {
  factory $AuthOtpRequestedStateCopyWith(AuthOtpRequestedState value,
          $Res Function(AuthOtpRequestedState) then) =
      _$AuthOtpRequestedStateCopyWithImpl<$Res>;
  $Res call({PhoneNumber phone});
}

/// @nodoc
class _$AuthOtpRequestedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthOtpRequestedStateCopyWith<$Res> {
  _$AuthOtpRequestedStateCopyWithImpl(
      AuthOtpRequestedState _value, $Res Function(AuthOtpRequestedState) _then)
      : super(_value, (v) => _then(v as AuthOtpRequestedState));

  @override
  AuthOtpRequestedState get _value => super._value as AuthOtpRequestedState;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(AuthOtpRequestedState(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$AuthOtpRequestedState implements AuthOtpRequestedState {
  const _$AuthOtpRequestedState(this.phone);

  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'AuthState.otpRequested(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthOtpRequestedState &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $AuthOtpRequestedStateCopyWith<AuthOtpRequestedState> get copyWith =>
      _$AuthOtpRequestedStateCopyWithImpl<AuthOtpRequestedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpRequested(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpRequested?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpRequested != null) {
      return otpRequested(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return otpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return otpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpRequested != null) {
      return otpRequested(this);
    }
    return orElse();
  }
}

abstract class AuthOtpRequestedState implements AuthState {
  const factory AuthOtpRequestedState(PhoneNumber phone) =
      _$AuthOtpRequestedState;

  PhoneNumber get phone;
  @JsonKey(ignore: true)
  $AuthOtpRequestedStateCopyWith<AuthOtpRequestedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOtpSentStateCopyWith<$Res> {
  factory $AuthOtpSentStateCopyWith(
          AuthOtpSentState value, $Res Function(AuthOtpSentState) then) =
      _$AuthOtpSentStateCopyWithImpl<$Res>;
  $Res call({String verificationId});
}

/// @nodoc
class _$AuthOtpSentStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthOtpSentStateCopyWith<$Res> {
  _$AuthOtpSentStateCopyWithImpl(
      AuthOtpSentState _value, $Res Function(AuthOtpSentState) _then)
      : super(_value, (v) => _then(v as AuthOtpSentState));

  @override
  AuthOtpSentState get _value => super._value as AuthOtpSentState;

  @override
  $Res call({
    Object? verificationId = freezed,
  }) {
    return _then(AuthOtpSentState(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthOtpSentState implements AuthOtpSentState {
  const _$AuthOtpSentState(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthState.otpSent(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthOtpSentState &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(verificationId));

  @JsonKey(ignore: true)
  @override
  $AuthOtpSentStateCopyWith<AuthOtpSentState> get copyWith =>
      _$AuthOtpSentStateCopyWithImpl<AuthOtpSentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpSent(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpSent?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class AuthOtpSentState implements AuthState {
  const factory AuthOtpSentState(String verificationId) = _$AuthOtpSentState;

  String get verificationId;
  @JsonKey(ignore: true)
  $AuthOtpSentStateCopyWith<AuthOtpSentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOtpSubmittedStateCopyWith<$Res> {
  factory $AuthOtpSubmittedStateCopyWith(AuthOtpSubmittedState value,
          $Res Function(AuthOtpSubmittedState) then) =
      _$AuthOtpSubmittedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthOtpSubmittedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthOtpSubmittedStateCopyWith<$Res> {
  _$AuthOtpSubmittedStateCopyWithImpl(
      AuthOtpSubmittedState _value, $Res Function(AuthOtpSubmittedState) _then)
      : super(_value, (v) => _then(v as AuthOtpSubmittedState));

  @override
  AuthOtpSubmittedState get _value => super._value as AuthOtpSubmittedState;
}

/// @nodoc

class _$AuthOtpSubmittedState implements AuthOtpSubmittedState {
  const _$AuthOtpSubmittedState();

  @override
  String toString() {
    return 'AuthState.otpSubmited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthOtpSubmittedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpSubmited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpSubmited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSubmited != null) {
      return otpSubmited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return otpSubmited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return otpSubmited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSubmited != null) {
      return otpSubmited(this);
    }
    return orElse();
  }
}

abstract class AuthOtpSubmittedState implements AuthState {
  const factory AuthOtpSubmittedState() = _$AuthOtpSubmittedState;
}

/// @nodoc
abstract class $AuthAuthenticatedStateCopyWith<$Res> {
  factory $AuthAuthenticatedStateCopyWith(AuthAuthenticatedState value,
          $Res Function(AuthAuthenticatedState) then) =
      _$AuthAuthenticatedStateCopyWithImpl<$Res>;
  $Res call({UserCredential userCreds});
}

/// @nodoc
class _$AuthAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthAuthenticatedStateCopyWith<$Res> {
  _$AuthAuthenticatedStateCopyWithImpl(AuthAuthenticatedState _value,
      $Res Function(AuthAuthenticatedState) _then)
      : super(_value, (v) => _then(v as AuthAuthenticatedState));

  @override
  AuthAuthenticatedState get _value => super._value as AuthAuthenticatedState;

  @override
  $Res call({
    Object? userCreds = freezed,
  }) {
    return _then(AuthAuthenticatedState(
      userCreds == freezed
          ? _value.userCreds
          : userCreds // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$AuthAuthenticatedState implements AuthAuthenticatedState {
  const _$AuthAuthenticatedState(this.userCreds);

  @override
  final UserCredential userCreds;

  @override
  String toString() {
    return 'AuthState.authenticated(userCreds: $userCreds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthAuthenticatedState &&
            const DeepCollectionEquality().equals(other.userCreds, userCreds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userCreds));

  @JsonKey(ignore: true)
  @override
  $AuthAuthenticatedStateCopyWith<AuthAuthenticatedState> get copyWith =>
      _$AuthAuthenticatedStateCopyWithImpl<AuthAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return authenticated(userCreds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return authenticated?.call(userCreds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userCreds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthAuthenticatedState implements AuthState {
  const factory AuthAuthenticatedState(UserCredential userCreds) =
      _$AuthAuthenticatedState;

  UserCredential get userCreds;
  @JsonKey(ignore: true)
  $AuthAuthenticatedStateCopyWith<AuthAuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorEventCopyWith<$Res> {
  factory $AuthErrorEventCopyWith(
          AuthErrorEvent value, $Res Function(AuthErrorEvent) then) =
      _$AuthErrorEventCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$AuthErrorEventCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthErrorEventCopyWith<$Res> {
  _$AuthErrorEventCopyWithImpl(
      AuthErrorEvent _value, $Res Function(AuthErrorEvent) _then)
      : super(_value, (v) => _then(v as AuthErrorEvent));

  @override
  AuthErrorEvent get _value => super._value as AuthErrorEvent;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(AuthErrorEvent(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorEvent implements AuthErrorEvent {
  const _$AuthErrorEvent(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.authErrorEvenr(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthErrorEvent &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthErrorEventCopyWith<AuthErrorEvent> get copyWith =>
      _$AuthErrorEventCopyWithImpl<AuthErrorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId) otpSent,
    required TResult Function() otpSubmited,
    required TResult Function(UserCredential userCreds) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return authErrorEvenr(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return authErrorEvenr?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId)? otpSent,
    TResult Function()? otpSubmited,
    TResult Function(UserCredential userCreds)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (authErrorEvenr != null) {
      return authErrorEvenr(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return authErrorEvenr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return authErrorEvenr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (authErrorEvenr != null) {
      return authErrorEvenr(this);
    }
    return orElse();
  }
}

abstract class AuthErrorEvent implements AuthState {
  const factory AuthErrorEvent(String error) = _$AuthErrorEvent;

  String get error;
  @JsonKey(ignore: true)
  $AuthErrorEventCopyWith<AuthErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
