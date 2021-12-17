import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/providers/user_provider.dart';
import '../../providers/conversation_provider.dart';

class MessageBubble extends ConsumerWidget {
  const MessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userStateNotifierProvider.notifier).user;
    final message = ref.watch(singleMessageProvider);
    final isMyMessage = user != null && message?.authorId == user.uid;
    final color = isMyMessage ? Colors.blue[700] : Colors.blue[200];
    final textColor = isMyMessage ? Colors.white : Colors.black;
    return Row(
      children: [
        if (isMyMessage)
          const SizedBox(
            width: 50,
          ),
        Expanded(
          child: Container(
            alignment:
                isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
            child: Card(
              color: color,
              child: Text(
                message!.text,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
        if (!isMyMessage)
          const SizedBox(
            width: 50,
          ),
      ],
    );
  }
}
