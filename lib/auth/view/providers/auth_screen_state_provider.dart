import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/providers/user_provider.dart';
import '../../providers/auth_provider.dart';
import 'auth_screen_state.dart';

final authScreenStateProvider = Provider<AuthScreenState>((ref) {
  final authState = ref.watch(authStateNotifierProvider);
  final userState = ref.watch(userStateNotifierProvider);

  AuthScreenState? _dependOnUserState() {
    return userState.whenOrNull(
      notAuthenticated: () => const AuthScreenProvidePhoneState(false),
      loading: (_) => const AuthScreenLoadingState(true),
      noName: (_) => const AuthScreenSubmitNameState(false),
      creatingNew: () => const AuthScreenSubmitNameState(true),
    );
  }

  return authState.when(
    loading: () => const AuthScreenLoadingState(true),
    notAuthenticated: () => const AuthScreenProvidePhoneState(false),
    otpRequested: (_) => const AuthScreenProvidePhoneState(true),
    otpSent: (_, phone) => AuthScreenSubmitOtpState(false, phone),
    otpSubmited: (phone) => AuthScreenSubmitOtpState(true, phone),
    authErrorEvenr: (_) => const AuthScreenLoadingState(true),
    authenticated: (_) =>
        _dependOnUserState() ?? const AuthScreenLoadingState(true),
  );
});
