import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/conversation_provider.dart';

class MessageInput extends HookConsumerWidget {
  const MessageInput({required this.chatId, Key? key}) : super(key: key);

  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();
    final canSend = useState(false);

    messageController.addListener(() {
      canSend.value = messageController.text.isNotEmpty;
    });

    void sendMessage() {
      ref
          .read(conversationStateNotifierProvider.notifier)
          .sendMessage(chatId, messageController.text);
      messageController.clear();
    }

    return Container(
      height: 70,
      color: Colors.black12,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
            ),
          ),
          IconButton(
            onPressed:
                canSend.value ? () => sendMessage() : null,
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
