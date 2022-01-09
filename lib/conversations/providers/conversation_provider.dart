import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../../utils/date_time_extensions/date_time_extensions.dart';
import '../models/conversation_event.dart';
import '../models/messages_group_by_date_model.dart';
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

  void sendMessage(String text) {
    final quote = state.whenOrNull(
      live: (state) => state.quoting,
      updating: (state) => state.quoting,
    );
    final message = Message(
      authorId: _user!.uid,
      chatId: chatId,
      text: text.trim(),
      sentAt: DateTime.now(),
      quote: quote,
      readUsersIds: [],
    );
    this.quote(null);
    _repo.sendMessage(chatId, message);
  }

  void quote(Message? message) {
    state.whenOrNull(
      live: (data) {
        _quoteStarted(message);
        final stateData = data.copyWith(quoting: message);
        state = ConversationLiveState(stateData);
      },
      updating: (data) {
        _quoteStarted(message);
        final stateData = data.copyWith(quoting: message);
        state = ConversationLiveState(stateData);
      },
    );
  }

  void markAsRead(Message message) {
    if (message.readUsersIds.contains(_user!.uid)) return;
    final isMyMessage = message.authorId == _user!.uid;
    _repo.markAsRead(message, isMyMessage);
  }

  void _quoteStarted(Message? message) {
    if (message != null) {
      state = const ConversationQuotedEvent();
    }
  }

  void _subscribeOnMessages(String chatId) async {
    final eventsStream = _repo.getMessagesStream(chatId);
    eventsStream.listen((events) => _onEvents(events, chatId));
  }

  void _onEvents(List<ConversationEvent> events, String chatId) {
    final messagesToAdd = <DateTime, List<Message>>{};
    final messagesToRemove = <DateTime, List<Message>>{};
    if (events.isEmpty) return;
    state.whenOrNull(
      live: (stateData) {
        for (final e in events.reversed) {
          e.when(
            add: (message) {
              messagesToAdd[message.sentAt.toDay()] == null
                  ? messagesToAdd[message.sentAt.toDay()] = [message]
                  : messagesToAdd[message.sentAt.toDay()]!.add(message);
              _addMessageEvent(message, stateData);
            },
            edit: (message) => _editMessageEvent(message, stateData),
            delete: (message) {
              messagesToRemove[message.sentAt.toDay()] == null
                  ? messagesToRemove[message.sentAt.toDay()] = [message]
                  : messagesToRemove[message.sentAt.toDay()]!.add(message);
              // _deleteMessageEvent(message, stateData);
            },
          );
        }
        state = ConversationLiveState(stateData);
        if (messagesToAdd.isNotEmpty || messagesToRemove.isNotEmpty) {
          _handleAddAndDelete(toRemove: messagesToRemove, toAdd: messagesToAdd);
        }
      },
      loading: () {
        final stateData = ConversationStateData(
          chatId: chatId,
          hasMoreToFetch: true,
          messages: [],
          groupedMessages: [],
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
    stateData.groupedMessages.addMessage(message);
  }

  void _editMessageEvent(Message message, ConversationStateData stateData) {
    final i = stateData.messages.indexWhere((m) => m.id == message.id);
    if (i < 0) {
      _addMessageEvent(message, stateData);
      return;
    }
    stateData.messages[i] = message;
    stateData.groupedMessages.replaceMessage(message);
  }

  void _deleteMessageEvent(Message message, ConversationStateData stateData) {
    stateData.messages.remove(message);
    stateData.groupedMessages.removeMessage(message);
  }

  void _handleAddAndDelete({
    required Map<DateTime, List<Message>> toRemove,
    required Map<DateTime, List<Message>> toAdd,
  }) async {
    Map<DateTime, List<int>> getLocations(
      ConversationStateData stateData,
      Map<DateTime, List<Message>> groupedMessages,
    ) {
      return groupedMessages.map(
        (date, messages) {
          final groups = stateData.groupedMessages;
          final indexes = messages
              .map((m) => groups
                  .firstWhere((g) => g.date.isSameDay(date))
                  .messages
                  .indexOf(m))
              .toList();
          return MapEntry(date, indexes);
        },
      );
    }

    if (toAdd.isNotEmpty) {
      // state is already includes new messages
      final tempState = state as ConversationLiveState;
      final addLocations = getLocations(tempState.data, toAdd);
      state = ConversationNewMessagesEvent(addLocations);
      state = ConversationLiveState(tempState.data);
    }
    if (toRemove.isNotEmpty) {
      //state still contains messages to be removed
      final tempState = state as ConversationLiveState;
      final removeLocations = getLocations(tempState.data, toRemove);

      await Future.delayed(Duration.zero, () {
        final messagesToRemove = toRemove.values.fold<List<Message>>(
            [], (previousValue, element) => previousValue..addAll(element));
        for (final mtr in messagesToRemove) {
          _deleteMessageEvent(mtr, tempState.data);
        }
        state = ConversationRemovedMessagesEvent(removeLocations);
        state = ConversationLiveState(tempState.data);
      });
    }
  }
}
