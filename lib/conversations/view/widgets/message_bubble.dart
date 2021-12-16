import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/conversation_provider.dart';

class MessageBubble extends ConsumerWidget {
  const MessageBubble(
      {Key? key, required this.isMyMessge})
      : super(key: key);

  final bool isMyMessge;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(singleMessageProvider);
    final color = isMyMessge ? Colors.blue[700] : Colors.blue[200];
    final textColor = isMyMessge ? Colors.white : Colors.black;
    return Row(
      children: [
        if (isMyMessge)
          const SizedBox(
            width: 50,
          ),
        Expanded(
          child: Container(
            alignment: isMyMessge ? Alignment.centerRight : Alignment.centerLeft,
            child: Card(
              color: color,
              child: Text(
                message!.text,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
        if (!isMyMessge)
          const SizedBox(
            width: 50,
          ),
      ],
    );
  }
}
