import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_talk/models/phone.dart';

import 'auth_state.dart';

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
        (ref) => AuthStateNotifier());

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier() : super(const AuthNotAuthenticatedState());

  final _auth = FirebaseAuth.instance;

  void reguestOtpWithPhone(String userInputPhone) {
    final phone = PhoneNumber.fromInput(userInputPhone);
    state = AuthOtpRequestedState(phone);
    _auth.verifyPhoneNumber(
      phoneNumber: phone.value,
      verificationCompleted: (creds) => _signIn(creds),
      verificationFailed: (e) => _onAuthFailed(e),
      codeSent: (verificationId, _) => _codeSent(verificationId),
      codeAutoRetrievalTimeout: (_) {},
    );
  }

  void submitOtp(String otp) {
    state.maybeWhen(
      otpSent: (verificationId) {
        state = const AuthOtpSubmittedState();
        final creds = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otp,
        );
        _signIn(creds);
      },
      orElse: () {},
    );
  }

  void _codeSent(String verificationId) {
    state = AuthOtpSentState(verificationId);
  }

  void _onAuthFailed(FirebaseAuthException exception) {
    final exceptoinMessage = exception.message;
    state = AuthErrorEvent(exceptoinMessage ?? 'Somthing went wrong. Try later');
    state = const AuthNotAuthenticatedState();
  }

  void _signIn(PhoneAuthCredential creds) async {
    try {
    final userCreds = await _auth.signInWithCredential(creds);
    state = AuthAuthenticatedState(userCreds);
    } on FirebaseAuthException catch (e) {
      _onAuthFailed(e);
    }
  }
}
