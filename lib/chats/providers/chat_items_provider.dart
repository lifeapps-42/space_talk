import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/models/user.dart';
import '../../user/providers/companions_provider.dart';
import '../../user/providers/user_provider.dart';
import '../models/chat_item.dart';
import '../models/private_chat.dart';
import 'chat_items_state.dart';
import 'chats_provider.dart';

final chatItemsProvider = Provider<ChatItemsState>((ref) {
  final chatsState = ref.watch(chatsStateNotifierProvider);
  final companionsState = ref.watch(companionsStateNotifierProvider);
  final currentUser = ref.watch(userStateNotifierProvider);

  List<User> _removeCurrentUserFromCompanions(List<User> companions) {
    final user = currentUser.whenOrNull(
      data: (user) => user,
      updating: (user) => user,
    );
    if (user == null) return companions;
    return List.from(
        <User>[...companions]..removeWhere((item) => item.uid == user.uid));
  }

  ChatItemsState _dependOnCompanionsState(List<Chat> chats) {
    return companionsState.when(
      initializing: () => const ChatItemsLoadingState(),
      subscribed: (companions, _) {
        final companionsWithoutCurrentUser =
            _removeCurrentUserFromCompanions(companions);
        return ChatItemsSubscribedState(
            ChatItem.itemsListFromChatsAndCompanions(
                chats, companionsWithoutCurrentUser));
      },
    );
  }

  ChatItemsState _dependOnChatsState() {
    return chatsState.when(
      initializing: () => const ChatItemsLoadingState(),
      subscribed: (chats) => chats.isEmpty
          ? const ChatItemsNoItemsState()
          : _dependOnCompanionsState(chats),
    );
  }

  return currentUser.maybeWhen(
    data: (_) => _dependOnChatsState(),
    updating: (_) => _dependOnChatsState(),
    orElse: () => const ChatItemsLoadingState(),
  );
});
