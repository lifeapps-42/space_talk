// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  UserNotAuthenticatedState notAuthenticated() {
    return const UserNotAuthenticatedState();
  }

  UserLoadingState loading(String uid) {
    return UserLoadingState(
      uid,
    );
  }

  UserNoNameState noName(fba.User fbUser) {
    return UserNoNameState(
      fbUser,
    );
  }

  UserCreatingNewState creatingNew() {
    return const UserCreatingNewState();
  }

  UserUpdatingState updating(User user) {
    return UserUpdatingState(
      user,
    );
  }

  UserDataState data(User user) {
    return UserDataState(
      user,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $UserNotAuthenticatedStateCopyWith<$Res> {
  factory $UserNotAuthenticatedStateCopyWith(UserNotAuthenticatedState value,
          $Res Function(UserNotAuthenticatedState) then) =
      _$UserNotAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotAuthenticatedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserNotAuthenticatedStateCopyWith<$Res> {
  _$UserNotAuthenticatedStateCopyWithImpl(UserNotAuthenticatedState _value,
      $Res Function(UserNotAuthenticatedState) _then)
      : super(_value, (v) => _then(v as UserNotAuthenticatedState));

  @override
  UserNotAuthenticatedState get _value =>
      super._value as UserNotAuthenticatedState;
}

/// @nodoc

class _$UserNotAuthenticatedState implements UserNotAuthenticatedState {
  const _$UserNotAuthenticatedState();

  @override
  String toString() {
    return 'UserState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserNotAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
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
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UserNotAuthenticatedState implements UserState {
  const factory UserNotAuthenticatedState() = _$UserNotAuthenticatedState;
}

/// @nodoc
abstract class $UserLoadingStateCopyWith<$Res> {
  factory $UserLoadingStateCopyWith(
          UserLoadingState value, $Res Function(UserLoadingState) then) =
      _$UserLoadingStateCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$UserLoadingStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadingStateCopyWith<$Res> {
  _$UserLoadingStateCopyWithImpl(
      UserLoadingState _value, $Res Function(UserLoadingState) _then)
      : super(_value, (v) => _then(v as UserLoadingState));

  @override
  UserLoadingState get _value => super._value as UserLoadingState;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(UserLoadingState(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoadingState implements UserLoadingState {
  const _$UserLoadingState(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'UserState.loading(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoadingState &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $UserLoadingStateCopyWith<UserLoadingState> get copyWith =>
      _$UserLoadingStateCopyWithImpl<UserLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return loading(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return loading?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoadingState implements UserState {
  const factory UserLoadingState(String uid) = _$UserLoadingState;

  String get uid;
  @JsonKey(ignore: true)
  $UserLoadingStateCopyWith<UserLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNoNameStateCopyWith<$Res> {
  factory $UserNoNameStateCopyWith(
          UserNoNameState value, $Res Function(UserNoNameState) then) =
      _$UserNoNameStateCopyWithImpl<$Res>;
  $Res call({fba.User fbUser});
}

/// @nodoc
class _$UserNoNameStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserNoNameStateCopyWith<$Res> {
  _$UserNoNameStateCopyWithImpl(
      UserNoNameState _value, $Res Function(UserNoNameState) _then)
      : super(_value, (v) => _then(v as UserNoNameState));

  @override
  UserNoNameState get _value => super._value as UserNoNameState;

  @override
  $Res call({
    Object? fbUser = freezed,
  }) {
    return _then(UserNoNameState(
      fbUser == freezed
          ? _value.fbUser
          : fbUser // ignore: cast_nullable_to_non_nullable
              as fba.User,
    ));
  }
}

/// @nodoc

class _$UserNoNameState implements UserNoNameState {
  const _$UserNoNameState(this.fbUser);

  @override
  final fba.User fbUser;

  @override
  String toString() {
    return 'UserState.noName(fbUser: $fbUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserNoNameState &&
            const DeepCollectionEquality().equals(other.fbUser, fbUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fbUser));

  @JsonKey(ignore: true)
  @override
  $UserNoNameStateCopyWith<UserNoNameState> get copyWith =>
      _$UserNoNameStateCopyWithImpl<UserNoNameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return noName(fbUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return noName?.call(fbUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) {
    if (noName != null) {
      return noName(fbUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return noName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return noName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (noName != null) {
      return noName(this);
    }
    return orElse();
  }
}

abstract class UserNoNameState implements UserState {
  const factory UserNoNameState(fba.User fbUser) = _$UserNoNameState;

  fba.User get fbUser;
  @JsonKey(ignore: true)
  $UserNoNameStateCopyWith<UserNoNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreatingNewStateCopyWith<$Res> {
  factory $UserCreatingNewStateCopyWith(UserCreatingNewState value,
          $Res Function(UserCreatingNewState) then) =
      _$UserCreatingNewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCreatingNewStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserCreatingNewStateCopyWith<$Res> {
  _$UserCreatingNewStateCopyWithImpl(
      UserCreatingNewState _value, $Res Function(UserCreatingNewState) _then)
      : super(_value, (v) => _then(v as UserCreatingNewState));

  @override
  UserCreatingNewState get _value => super._value as UserCreatingNewState;
}

/// @nodoc

class _$UserCreatingNewState implements UserCreatingNewState {
  const _$UserCreatingNewState();

  @override
  String toString() {
    return 'UserState.creatingNew()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserCreatingNewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return creatingNew();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return creatingNew?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) {
    if (creatingNew != null) {
      return creatingNew();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return creatingNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return creatingNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (creatingNew != null) {
      return creatingNew(this);
    }
    return orElse();
  }
}

abstract class UserCreatingNewState implements UserState {
  const factory UserCreatingNewState() = _$UserCreatingNewState;
}

/// @nodoc
abstract class $UserUpdatingStateCopyWith<$Res> {
  factory $UserUpdatingStateCopyWith(
          UserUpdatingState value, $Res Function(UserUpdatingState) then) =
      _$UserUpdatingStateCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserUpdatingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements $UserUpdatingStateCopyWith<$Res> {
  _$UserUpdatingStateCopyWithImpl(
      UserUpdatingState _value, $Res Function(UserUpdatingState) _then)
      : super(_value, (v) => _then(v as UserUpdatingState));

  @override
  UserUpdatingState get _value => super._value as UserUpdatingState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserUpdatingState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserUpdatingState implements UserUpdatingState {
  const _$UserUpdatingState(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.updating(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserUpdatingState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UserUpdatingStateCopyWith<UserUpdatingState> get copyWith =>
      _$UserUpdatingStateCopyWithImpl<UserUpdatingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return updating(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return updating?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class UserUpdatingState implements UserState {
  const factory UserUpdatingState(User user) = _$UserUpdatingState;

  User get user;
  @JsonKey(ignore: true)
  $UserUpdatingStateCopyWith<UserUpdatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(
      UserDataState _value, $Res Function(UserDataState) _then)
      : super(_value, (v) => _then(v as UserDataState));

  @override
  UserDataState get _value => super._value as UserDataState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserDataState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserDataState implements UserDataState {
  const _$UserDataState(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.data(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDataState &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      _$UserDataStateCopyWithImpl<UserDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthenticated,
    required TResult Function(String uid) loading,
    required TResult Function(fba.User fbUser) noName,
    required TResult Function() creatingNew,
    required TResult Function(User user) updating,
    required TResult Function(User user) data,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthenticated,
    TResult Function(String uid)? loading,
    TResult Function(fba.User fbUser)? noName,
    TResult Function()? creatingNew,
    TResult Function(User user)? updating,
    TResult Function(User user)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotAuthenticatedState value) notAuthenticated,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserNoNameState value) noName,
    required TResult Function(UserCreatingNewState value) creatingNew,
    required TResult Function(UserUpdatingState value) updating,
    required TResult Function(UserDataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotAuthenticatedState value)? notAuthenticated,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserNoNameState value)? noName,
    TResult Function(UserCreatingNewState value)? creatingNew,
    TResult Function(UserUpdatingState value)? updating,
    TResult Function(UserDataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class UserDataState implements UserState {
  const factory UserDataState(User user) = _$UserDataState;

  User get user;
  @JsonKey(ignore: true)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
