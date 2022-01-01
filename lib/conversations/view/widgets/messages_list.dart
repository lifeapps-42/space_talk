import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final dragStartPosition = useState(0.0);
    final dragPosition = useState(0.0);
    final resetAnimationController = useAnimationController();
    final isMounted = useIsMounted();

    void handleBackDragStart(DragStartDetails dragStart) {
      dragStartPosition.value = dragStart.globalPosition.dx;
    }

    void handleBackDragUpdate(DragUpdateDetails drag) {
      if (dragStartPosition.value > 100) return;
      final startDelta = drag.globalPosition.dx - dragStartPosition.value;
      dragPosition.value =
          math.pow(startDelta.clamp(0.0, 700) * 3000, 1 / 3) as double;
    }

    void resetOffset() {
      final dragEnd = dragPosition.value;
      resetAnimationController
        ..reset()
        ..duration = const Duration(milliseconds: 400);

      final animation = CurvedAnimation(
        parent: resetAnimationController,
        curve: Curves.linearToEaseOut,
      );

      animation.addListener(() {
        if (isMounted.call()) {
          dragPosition.value = (dragEnd - (dragEnd * animation.value));
        }
      });
      resetAnimationController.forward().orCancel;
    }

    void handleBackDragEnd(DragEndDetails _) {
      if (dragStartPosition.value > 100) return;
      if (dragPosition.value > 70) {
        HapticFeedback.mediumImpact();
        ref.read(mainScreenStateNotifierProvider.notifier).goToChats();
      } else {
        resetOffset();
      }
    }

    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onHorizontalDragStart: handleBackDragStart,
            onHorizontalDragUpdate: handleBackDragUpdate,
            onHorizontalDragEnd: handleBackDragEnd,
            dragStartBehavior: DragStartBehavior.start,
            child: Transform.translate(
              offset: Offset(dragPosition.value, 0.0),
              child: MessagesGroupedByDate(
                groupedMessages: messages,
                chatId: chatId,
                scrollController: scrollController,
              ),
            ),
          ),
        ),
        // Positioned.fill(
        //     left: 0,
        //     top: 0,
        //     bottom: 0,
        //     child: GestureDetector(
        //       onHorizontalDragStart: handleBackDragStart,
        //       onHorizontalDragUpdate: handleBackDragUpdate,
        //       onHorizontalDragEnd: handleBackDragEnd,
        //     )),
      ],
    );
  }
}
