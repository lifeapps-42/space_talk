import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_talk/widgets/keyboard_placeholder.dart';

import '../../../messages/models/message.dart';
import '../../providers/conversation_provider.dart';
import 'message_bubble.dart';

class MessagesList extends StatelessWidget {
  const MessagesList(
      {Key? key, required this.messages, required this.scrollController})
      : super(key: key);

  final List<Message> messages;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      itemCount: messages.length + 1,
      reverse: true,
      itemBuilder: (context, i) {
        if (i == 0) {
          return const KeyboardPlaceholder(correction: 60,);
        }
        final message = messages[i - 1];
        return ProviderScope(
          overrides: [singleMessageProvider.overrideWithValue(message)],
          child: const MessageBubble(),
        );
      },
    );
  }
}


