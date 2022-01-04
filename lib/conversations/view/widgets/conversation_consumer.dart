import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../../widgets/fullscreen_loader.dart';
import '../../providers/conversation_provider.dart';
import 'messages_list.dart';

class ConversationConsumer extends ConsumerWidget {
  const ConversationConsumer({
    Key? key,
    required this.chatItem,
    required this.scrollController,
    required this.inputWidgeSizeNotifier, 
  }) : super(key: key);

  final ChatItem chatItem;
  final ScrollController scrollController;
  final ValueNotifier<Size> inputWidgeSizeNotifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState =
        ref.watch(conversationStateNotifierProvider(chatItem.id));
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: conversationState.maybeWhen(
        live: (stateData) => MessagesList(
          inputWidgeSizeNotifier: inputWidgeSizeNotifier,
          messages: stateData.groupedMessages,
          scrollController: scrollController,
          chatId: stateData.chatId,
        ),
        updating: (stateData) => MessagesList(
          inputWidgeSizeNotifier: inputWidgeSizeNotifier,
          messages: stateData.groupedMessages,
          scrollController: scrollController,
          chatId: stateData.chatId,
        ),
        orElse: () => const FullscreenLoader(),
      ),
    );
  }
}
