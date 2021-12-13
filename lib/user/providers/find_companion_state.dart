import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/phone.dart';
import '../models/user.dart';

part 'find_companion_state.freezed.dart';

@freezed
class FindCompanionState with _$FindCompanionState {
  const factory FindCompanionState.ready() = FindCompanionReadyState;
  const factory FindCompanionState.searching(PhoneNumber phone) = FindCompanionSearchingState;
  const factory FindCompanionState.found(User companion) = FindCompanionFoundState;
  const factory FindCompanionState.noSuchUser() = FindCompanionNoSuchUserState;
}