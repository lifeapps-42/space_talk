import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../chats/models/chat_item.dart';
import 'conversation_consumer.dart';
import 'message_input.dart';
import 'parallax_background.dart';

class ConversationScreenBody extends HookWidget {
  const ConversationScreenBody({
    Key? key,
    required this.chatItem,
    required this.scrollController,
  }) : super(key: key);

  final ChatItem chatItem;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ConversationConsumer(
            chatItem: chatItem,
            scrollController: scrollController,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: MessageInput(
            chatId: chatItem.id,
            scrollController: scrollController,
          ),
        ),
      ],
    );
  }
}
