import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../conversations/view/providers/main_screen_state_provider.dart';
import '../../../utils/date_time_extensions/date_time_extensions.dart';
import '../../../widgets/online_status_label.dart';
import '../../../widgets/user_avatar.dart';
import '../../models/chat_item.dart';

class ChatItemTile extends ConsumerWidget {
  const ChatItemTile({Key? key, required this.chat}) : super(key: key);

  final ChatItem chat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void goToConversation() {
      ref.read(mainScreenStateNotifierProvider.notifier).goToConversation(chat);
    }

    return Card(
      elevation: 0,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(width: 0.5, color: Colors.black26),
      ),
      child: InkWell(
        onTap: () => goToConversation(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              UserAvatar(user: chat.users.first),
              const SizedBox(
                width: 8,
              ),
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
