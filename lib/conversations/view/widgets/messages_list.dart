import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../messages/models/message.dart';
import '../../providers/conversation_provider.dart';
import 'message_bubble.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key, required this.messages}) : super(key: key);

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      reverse: true,
      itemBuilder: (context, i) {
        final message = messages[i];
        return ProviderScope(
          overrides: [singleMessageProvider.overrideWithValue(message)],
          child: const MessageBubble(),
        );
      },
    );
  }
}
