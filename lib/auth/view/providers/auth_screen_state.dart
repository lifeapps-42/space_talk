import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/phone.dart';

part 'auth_screen_state.freezed.dart';

@freezed
class AuthScreenState with _$AuthScreenState{
  const factory AuthScreenState.loading(bool isLoading) = AuthScreenLoadingState;
  const factory AuthScreenState.providePhone(bool isLoading) = AuthScreenProvidePhoneState;
  const factory AuthScreenState.submitOtp(bool isLoading, PhoneNumber phone) = AuthScreenSubmitOtpState;
  const factory AuthScreenState.submitName(bool isLoading) = AuthScreenSubmitNameState;
  const factory AuthScreenState.errorEvent(bool isLoading, String error) = AuthScreenErrorEvent;
}