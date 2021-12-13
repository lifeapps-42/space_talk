import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/phone.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.notAuthenticated() = AuthNotAuthenticatedState;
  const factory AuthState.otpRequested(PhoneNumber phone) = AuthOtpRequestedState;
  const factory AuthState.otpSent(String verificationId, PhoneNumber phone) = AuthOtpSentState;
  const factory AuthState.otpSubmited(PhoneNumber phone) = AuthOtpSubmittedState;
  const factory AuthState.authenticated(User user) = AuthAuthenticatedState;
  const factory AuthState.authErrorEvenr(String error) = AuthErrorEvent;

}