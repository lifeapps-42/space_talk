import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../chats/models/chat_item.dart';
import 'conversation_consumer.dart';

class ConversationScreenBody extends HookWidget {
  const ConversationScreenBody({
    Key? key,
    required this.chatItem,
    required this.scrollController,
    required this.inputWidgeSizeNotifier, 
  }) : super(key: key);

  final ChatItem chatItem;
  final ScrollController scrollController;
  final ValueNotifier<Size> inputWidgeSizeNotifier;

  @override
  Widget build(BuildContext context) {
    return ConversationConsumer(
      inputWidgeSizeNotifier: inputWidgeSizeNotifier,
      chatItem: chatItem,
      scrollController: scrollController,
    );
  }
}
