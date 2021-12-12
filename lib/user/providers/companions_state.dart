import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/user.dart';

part 'companions_state.freezed.dart';

@freezed
class CompanionsState with _$CompanionsState{
  const factory CompanionsState.initializing() = CompanionsInitializingState;
  const factory CompanionsState.subscribed(List<User> companions) = CompanionsSubscribedState;
}