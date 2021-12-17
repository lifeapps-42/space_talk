import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../providers/conversation_provider.dart';
import '../widgets/message_input.dart';
import '../widgets/messages_list.dart';

class ConversationScreen extends ConsumerWidget {
  const ConversationScreen({Key? key, required this.chatItem})
      : super(key: key);

  static const route = 'conversation';
  final ChatItem chatItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState =
        ref.watch(conversationStateNotifierProvider(chatItem.id));

    void init() {
      ref
          .read(conversationStateNotifierProvider(chatItem.id).notifier)
          .fetchMessagesAndSubscribeOnEvents();
    }

    scheduleMicrotask(() => conversationState.maybeWhen(
          notInitialized: () => init(),
          orElse: () {},
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text(chatItem.companion.name),
      ),
      bottomNavigationBar: MessageInput(
        chatId: chatItem.id,
      ),
      body: conversationState.maybeWhen(
        live: (stateData, _) => MessagesList(messages: stateData.messages),
        updating: (stateData) => MessagesList(messages: stateData.messages),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
