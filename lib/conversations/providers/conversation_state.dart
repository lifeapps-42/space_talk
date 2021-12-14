import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/conversation_event.dart';
import 'conversation_state_data.dart';

part 'conversation_state.freezed.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.notInitialized() =
      ConversationNotInitializedState;
  const factory ConversationState.loading() = ConversationLoadingState;
  const factory ConversationState.updating(ConversationStateData data) =
      ConversationUpdatingState;
  const factory ConversationState.live(
    ConversationStateData data,
    StreamSubscription<List<ConversationEvent>> eventsSubscription,
  ) = ConversationLiveState;
}