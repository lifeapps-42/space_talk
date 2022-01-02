
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_talk/widgets/swipe_detector/swipe_detector.dart';

import '../../../widgets/swipe_detector/swipe_gesture_consumer.dart';
import '../../models/messages_group_by_date_model.dart';
import '../providers/main_screen_state_provider.dart';
import 'messages_group_by_day.dart';

class MessagesList extends HookConsumerWidget {
  const MessagesList({
    Key? key,
    required this.messages,
    required this.scrollController,
    required this.chatId,
  }) : super(key: key);

  final List<GroupedMessages> messages;
  final ScrollController scrollController;
  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void goBack() {
      HapticFeedback.mediumImpact();
      ref.read(mainScreenStateNotifierProvider.notifier).goToChats();
    }

    return SwipeDetector(
      child: SwipeDetectorConsumer(
        swipeDirection: SwipeDirection.right,
        minOffset: 70,
        action: goBack,
        maxDraggableOffset: 10000,
        resist: true,
        child: MessagesGroupedByDate(
          groupedMessages: messages,
          chatId: chatId,
          scrollController: scrollController,
        ),
      ),
    );
  }
}
