import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/providers/auth_provider.dart';
import '../../auth/providers/auth_state.dart';
import '../../models/phone.dart';
import '../models/user.dart';
import '../repo/repo_provider.dart';
import '../repo/user_firestore_repo.dart';
import 'user_state.dart';

final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier, UserState>(
        (ref) => UserStateNotifier(ref));

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier(this.ref)
      : _repo = ref.read(userRepoProvider),
        super(const UserNotAuthenticatedState()) {
    _listenAuth();
  }

  final Ref ref;
  final UserFirestoreRepo _repo;

  void registerUser(String name) {
    state.maybeWhen(
      noName: (fbUser) async {
        final user = User(
          name: name,
          phone: PhoneNumber(fbUser.phoneNumber!),
          uid: fbUser.uid,
        );
        state = const UserCreatingNewState();
        await _repo.setUser(user);
        state = UserDataState(user);
      },
      orElse: () {},
    );
  }

  void updateUser(User user) {
    state.maybeWhen(
      data: (prevUser) async {
        state = UserUpdatingState(prevUser);
        await _repo.setUser(user);
        state = UserDataState(user);
      },
      orElse: () {},
    );
  }

  void _fetchUser(fba.User fbUser) async {
    state = UserLoadingState(fbUser.uid);
    final user = await _repo.getUserById(fbUser.uid);
    state = user == null ? UserNoNameState(fbUser) : UserDataState(user);
  }

  void _dropUser() {
    ref.refresh(userStateNotifierProvider);
  }

  void _listenAuth() {
    ref.listen<AuthState>(authStateNotifierProvider, (prev, next) {
      next.maybeWhen(
        authenticated: (fbUser) => _fetchUser(fbUser),
        notAuthenticated: () => _dropUser(),
        orElse: () {},
      );
    });
  }
}
