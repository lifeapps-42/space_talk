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

  AuthLoadingState loading() {
    return const AuthLoadingState();
  }

  AuthNotAuthenticatedState notAuthenticated() {
    return const AuthNotAuthenticatedState();
  }

  AuthOtpRequestedState otpRequested(PhoneNumber phone) {
    return AuthOtpRequestedState(
      phone,
    );
  }

  AuthOtpSentState otpSent(String verificationId, PhoneNumber phone) {
    return AuthOtpSentState(
      verificationId,
      phone,
    );
  }

  AuthOtpSubmittedState otpSubmited(PhoneNumber phone) {
    return AuthOtpSubmittedState(
      phone,
    );
  }

  AuthAuthenticatedState authenticated(User user) {
    return AuthAuthenticatedState(
      user,
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
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
abstract class $AuthLoadingStateCopyWith<$Res> {
  factory $AuthLoadingStateCopyWith(
          AuthLoadingState value, $Res Function(AuthLoadingState) then) =
      _$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoadingStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingStateCopyWith<$Res> {
  _$AuthLoadingStateCopyWithImpl(
      AuthLoadingState _value, $Res Function(AuthLoadingState) _then)
      : super(_value, (v) => _then(v as AuthLoadingState));

  @override
  AuthLoadingState get _value => super._value as AuthLoadingState;
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
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
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthNotAuthenticatedState value) notAuthenticated,
    required TResult Function(AuthOtpRequestedState value) otpRequested,
    required TResult Function(AuthOtpSentState value) otpSent,
    required TResult Function(AuthOtpSubmittedState value) otpSubmited,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthErrorEvent value) authErrorEvenr,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthNotAuthenticatedState value)? notAuthenticated,
    TResult Function(AuthOtpRequestedState value)? otpRequested,
    TResult Function(AuthOtpSentState value)? otpSent,
    TResult Function(AuthOtpSubmittedState value)? otpSubmited,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthErrorEvent value)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
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
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
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
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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

  $PhoneNumberCopyWith<$Res> get phone;
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

  @override
  $PhoneNumberCopyWith<$Res> get phone {
    return $PhoneNumberCopyWith<$Res>(_value.phone, (value) {
      return _then(_value.copyWith(phone: value));
    });
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
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpRequested(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpRequested?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
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
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
  $Res call({String verificationId, PhoneNumber phone});

  $PhoneNumberCopyWith<$Res> get phone;
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
    Object? phone = freezed,
  }) {
    return _then(AuthOtpSentState(
      verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$AuthOtpSentState implements AuthOtpSentState {
  const _$AuthOtpSentState(this.verificationId, this.phone);

  @override
  final String verificationId;
  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'AuthState.otpSent(verificationId: $verificationId, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthOtpSentState &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $AuthOtpSentStateCopyWith<AuthOtpSentState> get copyWith =>
      _$AuthOtpSentStateCopyWithImpl<AuthOtpSentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpSent(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpSent?.call(verificationId, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(verificationId, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
  const factory AuthOtpSentState(String verificationId, PhoneNumber phone) =
      _$AuthOtpSentState;

  String get verificationId;
  PhoneNumber get phone;
  @JsonKey(ignore: true)
  $AuthOtpSentStateCopyWith<AuthOtpSentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOtpSubmittedStateCopyWith<$Res> {
  factory $AuthOtpSubmittedStateCopyWith(AuthOtpSubmittedState value,
          $Res Function(AuthOtpSubmittedState) then) =
      _$AuthOtpSubmittedStateCopyWithImpl<$Res>;
  $Res call({PhoneNumber phone});

  $PhoneNumberCopyWith<$Res> get phone;
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

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(AuthOtpSubmittedState(
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

class _$AuthOtpSubmittedState implements AuthOtpSubmittedState {
  const _$AuthOtpSubmittedState(this.phone);

  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'AuthState.otpSubmited(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthOtpSubmittedState &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $AuthOtpSubmittedStateCopyWith<AuthOtpSubmittedState> get copyWith =>
      _$AuthOtpSubmittedStateCopyWithImpl<AuthOtpSubmittedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return otpSubmited(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return otpSubmited?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (otpSubmited != null) {
      return otpSubmited(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
  const factory AuthOtpSubmittedState(PhoneNumber phone) =
      _$AuthOtpSubmittedState;

  PhoneNumber get phone;
  @JsonKey(ignore: true)
  $AuthOtpSubmittedStateCopyWith<AuthOtpSubmittedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthAuthenticatedStateCopyWith<$Res> {
  factory $AuthAuthenticatedStateCopyWith(AuthAuthenticatedState value,
          $Res Function(AuthAuthenticatedState) then) =
      _$AuthAuthenticatedStateCopyWithImpl<$Res>;
  $Res call({User user});
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
    Object? user = freezed,
  }) {
    return _then(AuthAuthenticatedState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthAuthenticatedState implements AuthAuthenticatedState {
  const _$AuthAuthenticatedState(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthAuthenticatedState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthAuthenticatedStateCopyWith<AuthAuthenticatedState> get copyWith =>
      _$AuthAuthenticatedStateCopyWithImpl<AuthAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
  const factory AuthAuthenticatedState(User user) = _$AuthAuthenticatedState;

  User get user;
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
    required TResult Function() loading,
    required TResult Function() notAuthenticated,
    required TResult Function(PhoneNumber phone) otpRequested,
    required TResult Function(String verificationId, PhoneNumber phone) otpSent,
    required TResult Function(PhoneNumber phone) otpSubmited,
    required TResult Function(User user) authenticated,
    required TResult Function(String error) authErrorEvenr,
  }) {
    return authErrorEvenr(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
    TResult Function(String error)? authErrorEvenr,
  }) {
    return authErrorEvenr?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notAuthenticated,
    TResult Function(PhoneNumber phone)? otpRequested,
    TResult Function(String verificationId, PhoneNumber phone)? otpSent,
    TResult Function(PhoneNumber phone)? otpSubmited,
    TResult Function(User user)? authenticated,
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
    required TResult Function(AuthLoadingState value) loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
    TResult Function(AuthLoadingState value)? loading,
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
