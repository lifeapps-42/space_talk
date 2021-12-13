import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/chat_items_provider.dart';
import 'chats_list.dart';

class ChatView extends ConsumerWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatItemsState = ref.watch(chatItemsProvider);
    return chatItemsState.when(
      loading: () => const CircularProgressIndicator(),
      noChats: () => const Text('No chats yet'),
      subscribed: (chats) => ChatsItemsList(chats: chats),
    );
  }
}
