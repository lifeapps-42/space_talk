import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/phone.dart';
import 'auth_state.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
        (ref) => AuthStateNotifier());

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier() : super(const AuthLoadingState()) {
    _subscribeToState();
  }

  final _auth = FirebaseAuth.instance;

  void reguestOtpWithPhone(String userInputPhone) {
    final phone = PhoneNumber.fromInput(userInputPhone);
    state = AuthOtpRequestedState(phone);
    _auth.verifyPhoneNumber(
      phoneNumber: phone.value,
      verificationCompleted: (creds) => _signIn(creds),
      verificationFailed: (e) => _onAuthFailed(e),
      codeSent: (verificationId, _) => _codeSent(verificationId, phone),
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  void submitOtp(String otp) {
    state.maybeWhen(
      otpSent: (verificationId, phone) {
        state = AuthOtpSubmittedState(phone);
        final creds = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otp,
        );
        _signIn(creds);
      },
      orElse: () {},
    );
  }

  void _codeSent(String verificationId, PhoneNumber phone) {
    state = AuthOtpSentState(verificationId, phone);
  }

  void _onAuthFailed(FirebaseAuthException exception) {
    final exceptoinMessage = exception.message;
    state =
        AuthErrorEvent(exceptoinMessage ?? 'Somthing went wrong. Try later');
    state = const AuthNotAuthenticatedState();
  }

  void _signIn(PhoneAuthCredential creds) async {
    try {
      await _auth.signInWithCredential(creds);
    } on FirebaseAuthException catch (e) {
      _onAuthFailed(e);
    }
  }

  void _subscribeToState() {
    _auth.authStateChanges().listen((user) {
      user != null
          ? state = AuthAuthenticatedState(user)
          : state = const AuthNotAuthenticatedState();
    });
  }
}
