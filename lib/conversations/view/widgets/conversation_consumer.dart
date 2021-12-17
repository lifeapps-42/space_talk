import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../providers/conversation_provider.dart';
import 'messages_list.dart';

class ConversationConsumer extends ConsumerWidget {
  const ConversationConsumer({
    Key? key,
    required this.chatItem,
    required this.scrollController,
  }) : super(key: key);

  final ChatItem chatItem;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState =
        ref.watch(conversationStateNotifierProvider(chatItem.id));
    return conversationState.maybeWhen(
      live: (stateData, _) => MessagesList(
        messages: stateData.messages,
        scrollController: scrollController,
      ),
      updating: (stateData) => MessagesList(
        messages: stateData.messages,
        scrollController: scrollController,
      ),
      orElse: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
