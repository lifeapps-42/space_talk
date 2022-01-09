import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../messages/models/message.dart';
import '../../../user/providers/companions_provider.dart';
import '../../../user/providers/user_provider.dart';
import '../../../utils/date_time_extensions/date_time_extensions.dart';
import '../../../widgets/swipe_detector/swipe_gesture_consumer.dart';
import '../../providers/conversation_provider.dart';

class MessageBubble extends ConsumerWidget {
  const MessageBubble({this.animation, Key? key}) : super(key: key);

  final Animation<double>? animation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('bubble');
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

    void quoteMessage() {
      ref
          .read(conversationStateNotifierProvider(message.chatId).notifier)
          .quote(message);
    }

    return SizeTransition(
      sizeFactor: animation ?? const AlwaysStoppedAnimation(1.0),
      child: VisibilityDetector(
        key: Key(message.id!),
        onVisibilityChanged: isReadByMe ? null : onVisibilityChanged,
        child: SwipeDetectorConsumer(
          key: Key(message.id ?? ''),
          resist: true,
          action: quoteMessage,
          swipeDirection: SwipeDirection.left,
          minOffset: 50,
          maxDraggableOffset: 1000,
          behavior: HitTestBehavior.deferToChild,
          resetOffsetOnDone: true,
          child: Row(
            children: [
              if (isMyMessage)
                const SizedBox(
                  width: 50,
                ),
              Expanded(
                child: Container(
                  alignment: isMyMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AnimatedBuilder(
                        animation: animation ?? const AlwaysStoppedAnimation(1.0),
                        builder: (context, _) {
                          return Transform(
                            transform: Matrix4.diagonal3Values(
                                1.0, animation?.value ?? 1.0, 1.0),
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
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
                                    if (message.quote != null)
                                      QuoteInBubble(
                                        isMyMessage: isMyMessage,
                                        quote: message.quote!,
                                      ),
                                    Text(
                                      message.text,
                                      style: TextStyle(
                                          color: textColor, fontSize: 15),
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

class QuoteInBubble extends StatelessWidget {
  const QuoteInBubble(
      {Key? key, required this.isMyMessage, required this.quote})
      : super(key: key);

  final bool isMyMessage;
  final Message quote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: Colors.white10,
        child: QuoteRepresent(
          quote: quote,
          isMyMessage: isMyMessage,
        ),
      ),
    );
  }
}

class QuoteRepresent extends ConsumerWidget {
  const QuoteRepresent({
    Key? key,
    required this.quote,
    required this.isMyMessage,
  }) : super(key: key);

  final Message quote;
  final bool isMyMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = isMyMessage
        ? Colors.white.withOpacity(0.7)
        : Colors.black.withOpacity(0.7);
    late final quoteAuthor =
        ref.read(companionsStateNotifierProvider).whenOrNull(
              subscribed: (users, _) => users.isEmpty
                  ? null
                  : users.firstWhere((user) => user.uid == quote.authorId),
            );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.format_quote_rounded,
          color: color,
        ),
        const SizedBox(
          width: 5,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quoteAuthor?.name ?? '',
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                quote.text,
                style: TextStyle(color: color),
                maxLines: 3,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
