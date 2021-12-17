import 'package:flutter/material.dart';

import '../../../chats/models/chat_item.dart';
import '../widgets/conversation_screen_body.dart';
import '../widgets/message_input.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key, required this.chatItem})
      : super(key: key);

  static const route = 'conversation';
  final ChatItem chatItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(chatItem.companion.name),
      ),
      body: ConversationScreenBody(chatItem: chatItem),
    );
  }
}
