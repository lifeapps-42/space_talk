import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../messages/models/message.dart';
import '../../../user/providers/user_provider.dart';
import '../../../utils/date_time_extensions/date_time_extensions.dart';
import '../../providers/conversation_provider.dart';

class MessageBubble extends HookConsumerWidget {
  const MessageBubble({required this.animation, Key? key}) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print(animation.value);
    final user = ref.read(userStateNotifierProvider.notifier).user;
    final message = ref.watch(singleMessageProvider);
    final isReadByMe = message!.readUsersIds.contains(user!.uid);
    final isMyMessage = message.authorId == user.uid;
    final color = isMyMessage
        ? const Color.fromARGB(1, 59, 29, 27)
        : const Color.fromARGB(1, 200, 200, 200);
    final textColor = isMyMessage ? Colors.white : Colors.black;

    void onVisibilityChanged(VisibilityInfo info) {
      if (info.size.height != info.visibleBounds.bottom || isReadByMe) return;
      ref
          .read(conversationStateNotifierProvider(message.chatId).notifier)
          .markAsRead(message);
    }

    return SizeTransition(
      sizeFactor: animation,
      child: VisibilityDetector(
        key: Key(message.id!),
        onVisibilityChanged: isReadByMe ? null : onVisibilityChanged,
        child: Row(
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
                  child: AnimatedBuilder(
                      animation: animation,
                      builder: (context, _) {
                        return Transform(
                          transform: Matrix4.diagonal3Values(
                              1.0, animation.value, 1.0),
                          alignment: Alignment.bottomCenter,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                  width: 0.5, color: Colors.black38),
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
                                    message.text,
                                    style: TextStyle(color: textColor),
                                  ),
                                  MessageBubbleTimeAndStatus(
                                    message: message,
                                    userId: user.uid,
                                    textColor: textColor,
                                    isMyMessage: isMyMessage,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            if (!isMyMessage)
              const SizedBox(
                width: 50,
              ),
          ],
        ),
      ),
    );
  }
}

class MessageBubbleTimeAndStatus extends StatelessWidget {
  const MessageBubbleTimeAndStatus({
    Key? key,
    required this.message,
    required this.textColor,
    required this.userId,
    required this.isMyMessage,
  }) : super(key: key);

  final Message message;
  final Color textColor;
  final String userId;
  final bool isMyMessage;

  @override
  Widget build(BuildContext context) {
    late final isReadByCompanion =
        message.readUsersIds.any((id) => userId != id);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isMyMessage)
          ReadMark(
            textColor: textColor,
            isReadByCompanion: isReadByCompanion,
          ),
        Text(
          message.sentAt.timeOnly,
          style: TextStyle(color: textColor.withOpacity(0.7), fontSize: 10),
        ),
      ],
    );
  }
}

class ReadMark extends StatelessWidget {
  const ReadMark({
    Key? key,
    required this.textColor,
    required this.isReadByCompanion,
  }) : super(key: key);

  final Color textColor;
  final bool isReadByCompanion;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      alignment: Alignment.centerLeft,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
      child: isReadByCompanion
          ? Icon(
              Icons.done,
              color: textColor.withOpacity(0.7),
              size: 10,
            )
          : Container(),
    );
  }
}
