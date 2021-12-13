// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthScreenStateTearOff {
  const _$AuthScreenStateTearOff();

  AuthScreenLoadingState loading(bool isLoading) {
    return AuthScreenLoadingState(
      isLoading,
    );
  }

  AuthScreenProvidePhoneState providePhone(bool isLoading) {
    return AuthScreenProvidePhoneState(
      isLoading,
    );
  }

  AuthScreenSubmitOtpState submitOtp(bool isLoading, PhoneNumber phone) {
    return AuthScreenSubmitOtpState(
      isLoading,
      phone,
    );
  }

  AuthScreenSubmitNameState submitName(bool isLoading) {
    return AuthScreenSubmitNameState(
      isLoading,
    );
  }

  AuthScreenErrorEvent errorEvent(bool isLoading, String error) {
    return AuthScreenErrorEvent(
      isLoading,
      error,
    );
  }
}

/// @nodoc
const $AuthScreenState = _$AuthScreenStateTearOff();

/// @nodoc
mixin _$AuthScreenState {
  bool get isLoading => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthScreenStateCopyWith<AuthScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenStateCopyWith(
          AuthScreenState value, $Res Function(AuthScreenState) then) =
      _$AuthScreenStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  _$AuthScreenStateCopyWithImpl(this._value, this._then);

  final AuthScreenState _value;
  // ignore: unused_field
  final $Res Function(AuthScreenState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $AuthScreenLoadingStateCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenLoadingStateCopyWith(AuthScreenLoadingState value,
          $Res Function(AuthScreenLoadingState) then) =
      _$AuthScreenLoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$AuthScreenLoadingStateCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenLoadingStateCopyWith<$Res> {
  _$AuthScreenLoadingStateCopyWithImpl(AuthScreenLoadingState _value,
      $Res Function(AuthScreenLoadingState) _then)
      : super(_value, (v) => _then(v as AuthScreenLoadingState));

  @override
  AuthScreenLoadingState get _value => super._value as AuthScreenLoadingState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(AuthScreenLoadingState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthScreenLoadingState implements AuthScreenLoadingState {
  const _$AuthScreenLoadingState(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthScreenState.loading(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthScreenLoadingState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AuthScreenLoadingStateCopyWith<AuthScreenLoadingState> get copyWith =>
      _$AuthScreenLoadingStateCopyWithImpl<AuthScreenLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) {
    return loading(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) {
    return loading?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthScreenLoadingState implements AuthScreenState {
  const factory AuthScreenLoadingState(bool isLoading) =
      _$AuthScreenLoadingState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AuthScreenLoadingStateCopyWith<AuthScreenLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenProvidePhoneStateCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenProvidePhoneStateCopyWith(
          AuthScreenProvidePhoneState value,
          $Res Function(AuthScreenProvidePhoneState) then) =
      _$AuthScreenProvidePhoneStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$AuthScreenProvidePhoneStateCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenProvidePhoneStateCopyWith<$Res> {
  _$AuthScreenProvidePhoneStateCopyWithImpl(AuthScreenProvidePhoneState _value,
      $Res Function(AuthScreenProvidePhoneState) _then)
      : super(_value, (v) => _then(v as AuthScreenProvidePhoneState));

  @override
  AuthScreenProvidePhoneState get _value =>
      super._value as AuthScreenProvidePhoneState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(AuthScreenProvidePhoneState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthScreenProvidePhoneState implements AuthScreenProvidePhoneState {
  const _$AuthScreenProvidePhoneState(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthScreenState.providePhone(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthScreenProvidePhoneState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AuthScreenProvidePhoneStateCopyWith<AuthScreenProvidePhoneState>
      get copyWith => _$AuthScreenProvidePhoneStateCopyWithImpl<
          AuthScreenProvidePhoneState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) {
    return providePhone(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) {
    return providePhone?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) {
    if (providePhone != null) {
      return providePhone(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) {
    return providePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) {
    return providePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) {
    if (providePhone != null) {
      return providePhone(this);
    }
    return orElse();
  }
}

abstract class AuthScreenProvidePhoneState implements AuthScreenState {
  const factory AuthScreenProvidePhoneState(bool isLoading) =
      _$AuthScreenProvidePhoneState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AuthScreenProvidePhoneStateCopyWith<AuthScreenProvidePhoneState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenSubmitOtpStateCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenSubmitOtpStateCopyWith(AuthScreenSubmitOtpState value,
          $Res Function(AuthScreenSubmitOtpState) then) =
      _$AuthScreenSubmitOtpStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, PhoneNumber phone});

  $PhoneNumberCopyWith<$Res> get phone;
}

/// @nodoc
class _$AuthScreenSubmitOtpStateCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenSubmitOtpStateCopyWith<$Res> {
  _$AuthScreenSubmitOtpStateCopyWithImpl(AuthScreenSubmitOtpState _value,
      $Res Function(AuthScreenSubmitOtpState) _then)
      : super(_value, (v) => _then(v as AuthScreenSubmitOtpState));

  @override
  AuthScreenSubmitOtpState get _value =>
      super._value as AuthScreenSubmitOtpState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? phone = freezed,
  }) {
    return _then(AuthScreenSubmitOtpState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$AuthScreenSubmitOtpState implements AuthScreenSubmitOtpState {
  const _$AuthScreenSubmitOtpState(this.isLoading, this.phone);

  @override
  final bool isLoading;
  @override
  final PhoneNumber phone;

  @override
  String toString() {
    return 'AuthScreenState.submitOtp(isLoading: $isLoading, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthScreenSubmitOtpState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $AuthScreenSubmitOtpStateCopyWith<AuthScreenSubmitOtpState> get copyWith =>
      _$AuthScreenSubmitOtpStateCopyWithImpl<AuthScreenSubmitOtpState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) {
    return submitOtp(isLoading, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) {
    return submitOtp?.call(isLoading, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(isLoading, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) {
    return submitOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) {
    return submitOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(this);
    }
    return orElse();
  }
}

abstract class AuthScreenSubmitOtpState implements AuthScreenState {
  const factory AuthScreenSubmitOtpState(bool isLoading, PhoneNumber phone) =
      _$AuthScreenSubmitOtpState;

  @override
  bool get isLoading;
  PhoneNumber get phone;
  @override
  @JsonKey(ignore: true)
  $AuthScreenSubmitOtpStateCopyWith<AuthScreenSubmitOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenSubmitNameStateCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenSubmitNameStateCopyWith(AuthScreenSubmitNameState value,
          $Res Function(AuthScreenSubmitNameState) then) =
      _$AuthScreenSubmitNameStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$AuthScreenSubmitNameStateCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenSubmitNameStateCopyWith<$Res> {
  _$AuthScreenSubmitNameStateCopyWithImpl(AuthScreenSubmitNameState _value,
      $Res Function(AuthScreenSubmitNameState) _then)
      : super(_value, (v) => _then(v as AuthScreenSubmitNameState));

  @override
  AuthScreenSubmitNameState get _value =>
      super._value as AuthScreenSubmitNameState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(AuthScreenSubmitNameState(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthScreenSubmitNameState implements AuthScreenSubmitNameState {
  const _$AuthScreenSubmitNameState(this.isLoading);

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthScreenState.submitName(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthScreenSubmitNameState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AuthScreenSubmitNameStateCopyWith<AuthScreenSubmitNameState> get copyWith =>
      _$AuthScreenSubmitNameStateCopyWithImpl<AuthScreenSubmitNameState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) {
    return submitName(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) {
    return submitName?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) {
    if (submitName != null) {
      return submitName(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) {
    return submitName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) {
    return submitName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) {
    if (submitName != null) {
      return submitName(this);
    }
    return orElse();
  }
}

abstract class AuthScreenSubmitNameState implements AuthScreenState {
  const factory AuthScreenSubmitNameState(bool isLoading) =
      _$AuthScreenSubmitNameState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AuthScreenSubmitNameStateCopyWith<AuthScreenSubmitNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenErrorEventCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenErrorEventCopyWith(AuthScreenErrorEvent value,
          $Res Function(AuthScreenErrorEvent) then) =
      _$AuthScreenErrorEventCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, String error});
}

/// @nodoc
class _$AuthScreenErrorEventCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res>
    implements $AuthScreenErrorEventCopyWith<$Res> {
  _$AuthScreenErrorEventCopyWithImpl(
      AuthScreenErrorEvent _value, $Res Function(AuthScreenErrorEvent) _then)
      : super(_value, (v) => _then(v as AuthScreenErrorEvent));

  @override
  AuthScreenErrorEvent get _value => super._value as AuthScreenErrorEvent;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(AuthScreenErrorEvent(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthScreenErrorEvent implements AuthScreenErrorEvent {
  const _$AuthScreenErrorEvent(this.isLoading, this.error);

  @override
  final bool isLoading;
  @override
  final String error;

  @override
  String toString() {
    return 'AuthScreenState.errorEvent(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthScreenErrorEvent &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $AuthScreenErrorEventCopyWith<AuthScreenErrorEvent> get copyWith =>
      _$AuthScreenErrorEventCopyWithImpl<AuthScreenErrorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) loading,
    required TResult Function(bool isLoading) providePhone,
    required TResult Function(bool isLoading, PhoneNumber phone) submitOtp,
    required TResult Function(bool isLoading) submitName,
    required TResult Function(bool isLoading, String error) errorEvent,
  }) {
    return errorEvent(isLoading, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
  }) {
    return errorEvent?.call(isLoading, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? loading,
    TResult Function(bool isLoading)? providePhone,
    TResult Function(bool isLoading, PhoneNumber phone)? submitOtp,
    TResult Function(bool isLoading)? submitName,
    TResult Function(bool isLoading, String error)? errorEvent,
    required TResult orElse(),
  }) {
    if (errorEvent != null) {
      return errorEvent(isLoading, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthScreenLoadingState value) loading,
    required TResult Function(AuthScreenProvidePhoneState value) providePhone,
    required TResult Function(AuthScreenSubmitOtpState value) submitOtp,
    required TResult Function(AuthScreenSubmitNameState value) submitName,
    required TResult Function(AuthScreenErrorEvent value) errorEvent,
  }) {
    return errorEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
  }) {
    return errorEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthScreenLoadingState value)? loading,
    TResult Function(AuthScreenProvidePhoneState value)? providePhone,
    TResult Function(AuthScreenSubmitOtpState value)? submitOtp,
    TResult Function(AuthScreenSubmitNameState value)? submitName,
    TResult Function(AuthScreenErrorEvent value)? errorEvent,
    required TResult orElse(),
  }) {
    if (errorEvent != null) {
      return errorEvent(this);
    }
    return orElse();
  }
}

abstract class AuthScreenErrorEvent implements AuthScreenState {
  const factory AuthScreenErrorEvent(bool isLoading, String error) =
      _$AuthScreenErrorEvent;

  @override
  bool get isLoading;
  String get error;
  @override
  @JsonKey(ignore: true)
  $AuthScreenErrorEventCopyWith<AuthScreenErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
