import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_talk/conversations/view/widgets/message_input.dart';

import '../../../chats/models/chat_item.dart';
import '../../../user/providers/user_provider.dart';
import '../../providers/conversation_provider.dart';
import '../widgets/messages_list.dart';

class ConversationScreen extends ConsumerWidget {
  const ConversationScreen({Key? key, required this.chatItem})
      : super(key: key);

  static const route = 'conversation';
  final ChatItem chatItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationState = ref.watch(conversationStateNotifierProvider);
    final userId = ref.read(userStateNotifierProvider).maybeWhen(
          data: (user) => user.uid,
          updating: (user) => user.uid,
          orElse: () => '',
        );

    void init() {
      ref
          .read(conversationStateNotifierProvider.notifier)
          .fetchMessagesAndSubscribeOnEvents(chatItem.id);
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
        live: (stateData, _) =>
            MessagesList(messages: stateData.messages, currentUserId: userId),
        updating: (stateData) =>
            MessagesList(messages: stateData.messages, currentUserId: userId),
        orElse: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
