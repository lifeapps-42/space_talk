import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/phone.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.notAuthenticated() = AuthNotAuthenticatedState;
  const factory AuthState.otpRequested(PhoneNumber phone) = AuthOtpRequestedState;
  const factory AuthState.otpSent(String verificationId) = AuthOtpSentState;
  const factory AuthState.otpSubmited() = AuthOtpSubmittedState;
  const factory AuthState.authenticated(UserCredential userCreds) = AuthAuthenticatedState;
  const factory AuthState.authErrorEvenr(String error) = AuthErrorEvent;

}