import 'package:flutter/material.dart';

import '../../../conversations/view/screens/conversation_screen.dart';
import '../../../utils/date_time_extensions/date_time_extensions.dart';
import '../../../widgets/online_status_label.dart';
import '../../../widgets/user_avatar.dart';
import '../../models/chat_item.dart';

class ChatItemTile extends StatelessWidget {
  const ChatItemTile({Key? key, required this.chat}) : super(key: key);

  final ChatItem chat;

  @override
  Widget build(BuildContext context) {
    void goToConversation() {
      Navigator.pushNamed(context, ConversationScreen.route, arguments: chat);
    }

    return Card(
      child: InkWell(
        onTap: () => goToConversation(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              UserAvatar(user: chat.users.first),
              const SizedBox(width: 8,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          chat.users.first.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        OnlineStatusLabel(
                          userId: chat.users.first.uid,
                          chatId: chat.id,
                        ),
                        const Spacer(),
                        Text(chat.lastMessage.sentAt.timeOnly)
                      ],
                    ),
                    Text(chat.users.first.phone.value),
                    Text(
                      chat.lastMessage.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
