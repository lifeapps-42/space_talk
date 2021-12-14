import 'package:flutter/material.dart';

import '../../../messages/models/message.dart';
import 'message_bubble.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({ Key? key, required this.messages, required this.currentUserId }) : super(key: key);

  final List<Message> messages;
  final String currentUserId;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      reverse: true,
      itemBuilder: (context, i) {
        final message = messages[i];
        final isMyMessage = message.authorId == currentUserId;
        return MessageBubble(isMyMessge: isMyMessage, message: message,);
      },
    );
  }
}