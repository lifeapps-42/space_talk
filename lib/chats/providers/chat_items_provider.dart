import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/providers/companions_provider.dart';
import '../models/chat_item.dart';
import '../models/private_chat.dart';
import 'chat_items_state.dart';
import 'chats_provider.dart';

final chatItemsProvider = Provider<ChatItemsState>((ref) {
  final chatsState = ref.watch(chatsStateNotifierProvider);
  final companionsState = ref.watch(companionsStateNotifierProvider);

  ChatItemsState _dependOnCompanionsState(List<Chat> chats) {
    return companionsState.when(
      initializing: () => const ChatItemsLoadingState(),
      subscribed: (companions, _) => ChatItemsSubscribedState(
          ChatItem.itemsListFromChatsAndCompanions(chats, companions)),
    );
  }

  return chatsState.when(
    noChats: () => const ChatItemsNoItemsState(),
    initializing: () => const ChatItemsLoadingState(),
    subscribed: (chats) => _dependOnCompanionsState(chats),
  );
});
