import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../models/conversation_event.dart';
import '../repo/conversation_repo_provider.dart';
import 'conversation_state.dart';
import 'conversation_state_data.dart';

final conversationStateNotifierProvider =
    StateNotifierProvider<ConversationStateNotifier, ConversationState>(
        (ref) => ConversationStateNotifier(ref));

class ConversationStateNotifier extends StateNotifier<ConversationState> {
  ConversationStateNotifier(this.ref)
      : _repo = ref.read(conversationRepoProvider),
        _user = ref
            .read(userStateNotifierProvider)
            .whenOrNull(data: (user) => user, updating: (user) => user),
        super(const ConversationNotInitializedState());

  final Ref ref;
  final ConversationRepo _repo;
  final User? _user;

  void fetchMessagesAndSubscribeOnEvents(String chatId) async {
    state = const ConversationLoadingState();
    final messages = await _repo.fetchMessages(chatId);
    final hasMoreToFetch = messages.length == _repo.paginationRate;
    final stateData = ConversationStateData(
      messages: messages,
      hasMoreToFetch: hasMoreToFetch,
      chatId: chatId,
    );
    _subscribeToEvents(stateData);
  }

  void fetchMore() {
    state.maybeWhen(
      live: (oldStateData, subscription) async {
        if (!oldStateData.hasMoreToFetch) return;
        state = ConversationUpdatingState(oldStateData);
        final newMessages = await _repo.fetchMessages(oldStateData.chatId,
            fetchedMessages: oldStateData.messages);
        final stateData = oldStateData.copyWith(
          messages: [...oldStateData.messages, ...newMessages],
          hasMoreToFetch: newMessages.length == _repo.paginationRate,
        );
        state = ConversationLiveState(stateData, subscription);
      },
      orElse: () {},
    );
  }

  void sendMessage(String chatId, String text) {
    final message = Message(
      authorId: _user!.uid,
      text: text,
      sentAt: DateTime.now(),
      readUsersIds: {},
    );
    _repo.sendMessage(chatId, message);
  }

  void _subscribeToEvents(ConversationStateData stateData, {StreamSubscription<List<ConversationEvent>>? subscription,}) {
    subscription?.cancel();
    final eventsStream = _repo.getEventsStream(stateData.chatId);
    final newSubscription = eventsStream.listen((event) => _onEvent(event));
    state = ConversationLiveState(stateData, newSubscription);
  }

  void _onEvent(List<ConversationEvent> event) {
    if (event.isEmpty) return;
    event.first.when(
      add: (message) => _addMessageEvent(message),
      edit: (_) {},
      delete: (_) {},
      messageRead: (_) {},
    );
  }

  void _addMessageEvent(Message message) {
    state.maybeWhen(
      live: (oldStateData, subscription) {
        if(oldStateData.messages.contains(message)) return;
        final messages = [message, ...oldStateData.messages];
        final stateData = oldStateData.copyWith(messages: messages);
        _subscribeToEvents(stateData, subscription: subscription);
      },
      orElse: () {},
    );
  }
}
