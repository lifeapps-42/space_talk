
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/providers/user_provider.dart';
import '../../../utils/date_time_extensions/date_time_extensions.dart';
import '../../providers/conversation_provider.dart';

class MessageBubble extends ConsumerWidget {
  const MessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userStateNotifierProvider.notifier).user;
    final message = ref.watch(singleMessageProvider);
    final isMyMessage = user != null && message?.authorId == user.uid;
    final color = isMyMessage
        ? const Color.fromARGB(1, 59, 29, 27)
        : const Color.fromARGB(1, 200, 200, 200);
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
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(width: 0.5, color: Colors.black38),
                ),
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                color: color.withOpacity(0.9),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        message!.text,
                        style: TextStyle(color: textColor),
                      ),
                      Text(
                        message.sentAt.timeOnly,
                        style: TextStyle(
                            color: textColor.withOpacity(0.7), fontSize: 10),
                      ),
                    ],
                  ),
                ),
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
