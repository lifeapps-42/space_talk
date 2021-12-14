import 'package:flutter/material.dart';
import '../../../messages/models/message.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {Key? key, required this.message, required this.isMyMessge})
      : super(key: key);

  final Message message;
  final bool isMyMessge;

  @override
  Widget build(BuildContext context) {
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
                message.text,
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
