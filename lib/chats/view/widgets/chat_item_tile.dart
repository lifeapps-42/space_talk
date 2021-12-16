import 'package:flutter/material.dart';

import '../../../conversations/view/screens/conversation_screen.dart';
import '../../../widgets/online_status_label.dart';
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
          Row(
            children: [
              Text(chat.users.first.name),
              const SizedBox(width: 15,),
              OnlineStatusLabel(userId: chat.users.first.uid, chatId: chat.id),
            ],
          ),
          Text(chat.users.first.phone.value),
          Text(chat.lastMessage.text),
        ],),
      ),
    );
  }
}