import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:space_talk/conversations/view/widgets/messages_smart_list.dart';
import 'package:space_talk/messages/models/message.dart';

import '../../../widgets/swipe_detector/swipe_detector.dart';
import '../../../widgets/swipe_detector/swipe_gesture_consumer.dart';
import '../../models/messages_group_by_date_model.dart';
import '../providers/main_screen_state_provider.dart';
import 'messages_group_by_day.dart';

class MessagesList extends HookConsumerWidget {
  const MessagesList({
    Key? key,
    required this.groupedMessages,
    required this.scrollController,
    required this.chatId,
    required this.messages, 
  }) : super(key: key);

  final List<GroupedMessages> groupedMessages;
  final List<Message> messages;
  final ScrollController scrollController;
  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void goBack() {
      ref.read(mainScreenStateNotifierProvider.notifier).goToChats();
    }

    return SwipeDetector(
      child: SwipeDetectorConsumer(
        swipeDirection: SwipeDirection.right,
        minOffset: 70,
        action: goBack,
        maxDraggableOffset: 10000,
        resist: true,
        child: MediaQuery.removeViewPadding(
          context: context,
          removeBottom: true,
          child: MessagesSmartList(
            groupedMessages: groupedMessages,
            messages: messages,
            chatId: chatId,
          ),
        ),
      ),
    );
  }
}
