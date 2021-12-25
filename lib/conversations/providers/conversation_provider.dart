
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../models/conversation_event.dart';
import '../repo/conversation_repo_provider.dart';
import 'conversation_state.dart';
import 'conversation_state_data.dart';

final conversationStateNotifierProvider = StateNotifierProvider.family<
    ConversationStateNotifier,
    ConversationState,
    String>((ref, chatId) => ConversationStateNotifier(ref, chatId));

final singleMessageProvider = Provider<Message?>((_) => null);

class ConversationStateNotifier extends StateNotifier<ConversationState> {
  ConversationStateNotifier(this.ref, this.chatId)
      : _repo = ref.read(conversationRepoProvider),
        _user = ref
            .read(userStateNotifierProvider)
            .whenOrNull(data: (user) => user, updating: (user) => user),
        super(const ConversationNotInitializedState()) {
    _fetchMessagesAndSubscribeOnEvents();
  }

  final Ref ref;
  final ConversationRepo _repo;
  final String chatId;
  final User? _user;

  void _fetchMessagesAndSubscribeOnEvents() async {
    state = const ConversationLoadingState();
    _subscribeOnMessages(chatId);
  }

  // void fetchMore() {
  //   state.maybeWhen(
  //     live: (oldStateData, subscription) async {
  //       if (!oldStateData.hasMoreToFetch) return;
  //       state = ConversationUpdatingState(oldStateData);
  //       final newMessages = await _repo.fetchMessages(oldStateData.chatId,
  //           fetchedMessages: oldStateData.messages);
  //       final stateData = oldStateData.copyWith(
  //         messages: [...oldStateData.messages, ...newMessages],
  //         hasMoreToFetch: newMessages.length == _repo.paginationRate,
  //       );
  //       state = ConversationLiveState(stateData, subscription);
  //     },
  //     orElse: () {},
  //   );
  // }

  void sendMessage(String text) {
    final message = Message(
      authorId: _user!.uid,
      chatId: chatId,
      text: text.trim(),
      sentAt: DateTime.now(),
      readUsersIds: [],
    );
    _repo.sendMessage(chatId, message);
  }

  void markAsRead(Message message) {
    if(message.readUsersIds.contains(_user!.uid)) return;
    final isMyMessage = message.authorId == _user!.uid;
    _repo.markAsRead(message, isMyMessage);
  }

  void _subscribeOnMessages(String chatId) async {
    final eventsStream = _repo.getMessagesStream(chatId);
    eventsStream.listen((events) => _onEvents(events, chatId));
  }

  // void _onMessages(
  //   String chatId,
  //   List<Message> messages,
  // ) {
  //   state.maybeWhen(
  //     live: (oldStateData) {
  //       final stateData = oldStateData.copyWith(messages: messages);
  //       state = ConversationLiveState(stateData);
  //     },
  //     loading: () {
  //       final stateData = ConversationStateData(
  //         chatId: chatId,
  //         hasMoreToFetch: true,
  //         messages: messages,
  //       );
  //       state = ConversationLiveState(stateData);
  //     },
  //     orElse: () {},
  //   );
  // }

  // void _subscribeToEvents(
  //   ConversationStateData stateData, {
  //   StreamSubscription<List<ConversationEvent>>? subscription,
  // }) {
  //   subscription?.cancel();
  //   final eventsStream = _repo.getEventsStream(stateData.chatId);
  //   final newSubscription = eventsStream.listen((event) => _onEvent(event));
  //   state = ConversationLiveState(stateData, newSubscription);
  // }

  void _onEvents(List<ConversationEvent> events, String chatId) {
    if (events.isEmpty) return;
    state.whenOrNull(
      live: (stateData) {
        for (final e in events.reversed) {
          e.when(
            add: (message) => _addMessageEvent(message, stateData),
            edit: (message) => _editMessageEvent(message, stateData),
            delete: (id) => _deleteMessageEvent(id, stateData),
          );
        }
        state = ConversationLiveState(stateData);
      },
      loading: () {
        final stateData = ConversationStateData(
          chatId: chatId,
          hasMoreToFetch: true,
          messages: [],
        );
        for (final e in events.reversed) {
          e.whenOrNull(
            add: (message) => _addMessageEvent(message, stateData),
          );
        }
        state = ConversationLiveState(stateData);
      },
    );
  }

  void _addMessageEvent(Message message, ConversationStateData stateData) {
    if (stateData.messages.contains(message)) return;
    stateData.messages.insert(0, message);
  }

  void _editMessageEvent(Message message, ConversationStateData stateData) {
    final i = stateData.messages.indexWhere((m) => m.id == message.id);
    if(i < 0) {
      _addMessageEvent(message, stateData);
      return;
    }
    stateData.messages[i] = message;
  }

  void _deleteMessageEvent(String messageId, ConversationStateData stateData) {
    final i = stateData.messages.indexWhere((m) => m.id == messageId);
    if (i < 0) return;
    stateData.messages.removeAt(i);
  }
}
