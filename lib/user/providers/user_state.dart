import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;

import '../models/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState{
  const factory UserState.notAuthenticated() = UserNotAuthenticatedState;
  const factory UserState.loading(String uid) = UserLoadingState;
  const factory UserState.noName(fba.User fbUser) = UserNoNameState;
  const factory UserState.creatingNew() = UserCreatingNewState;
  const factory UserState.updating(User user) = UserUpdatingState;
  const factory UserState.data(User user) = UserDataState;
}