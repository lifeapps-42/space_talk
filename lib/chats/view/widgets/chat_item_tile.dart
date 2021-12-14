import 'package:flutter/material.dart';

import '../../../conversations/view/screens/conversation_screen.dart';
import '../../models/chat_item.dart';

class ChatItemTile extends StatelessWidget {
  const ChatItemTile({ Key? key, required this.chat }) : super(key: key);

  final ChatItem chat;

  @override
  Widget build(BuildContext context) {
    void goToConversation(){
      Navigator.pushNamed(context, ConversationScreen.route, arguments: chat);
    }

    return Card(
      child: InkWell(
        onTap: () => goToConversation(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(chat.users.first.name),
          Text(chat.users.first.phone.value),
          Text(chat.lastMessage.text),
        ],),
      ),
    );
  }
}