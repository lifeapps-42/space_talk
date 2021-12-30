
import 'package:freezed_annotation/freezed_annotation.dart';

import 'conversation_state_data.dart';

part 'conversation_state.freezed.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.notInitialized() =
      ConversationNotInitializedState;
  const factory ConversationState.loading() = ConversationLoadingState;
  const factory ConversationState.updating(ConversationStateData data) =
      ConversationUpdatingState;
  const factory ConversationState.live(ConversationStateData data) =
      ConversationLiveState;
  const factory ConversationState.newMessagesEvent(List<int> indexes) =
      ConversationNewMessagesEvent;
}
