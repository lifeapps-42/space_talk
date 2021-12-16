import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/providers/auth_provider.dart';
import '../../auth/providers/auth_state.dart';
import '../../models/phone.dart';
import '../models/user.dart';
import '../models/user_status.dart';
import '../repo/repo_provider.dart';
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
  final UserRepo _repo;

  void registerUser(String name) {
    state.maybeWhen(
      noName: (fbUser) async {
        final user = User(
          name: name,
          phone: PhoneNumber(fbUser.phoneNumber!),
          uid: fbUser.uid,
          status: const UserOnlineStatus(),
        );
        state = const UserCreatingNewState();
        await _repo.setUser(user);
        state = UserDataState(user);
      },
      orElse: () {},
    );
  }

  User? get user => state.whenOrNull(
        data: (user) => user,
        updating: (user) => user,
      );

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

  void goOnline(){
    if(user == null) return;
    const status = UserOnlineStatus();
    final newUser = user!.copyWith(status: status);
    _repo.setUser(newUser);
  }

  void goOffline(){
    if(user == null) return;
    final lastSeen = DateTime.now().toUtc();
    final status = UserOfflineStatus(lastSeen);
    final newUser = user!.copyWith(status: status);
    _repo.setUser(newUser);
  }

  void typing(String chatId){
     if(user == null) return;
    final status = UserPrintingStatus(chatId);
    final newUser = user!.copyWith(status: status);
    _repo.setUser(newUser);
  }

  void _fetchUser(fba.User fbUser) async {
    state = UserLoadingState(fbUser.uid);
    final user = await _repo.getUserById(fbUser.uid);
    state = user == null ? UserNoNameState(fbUser) : UserDataState(user);
  }

  void _dropUser() {
    goOffline();
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