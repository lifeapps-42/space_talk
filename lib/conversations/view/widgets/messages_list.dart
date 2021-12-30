import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../messages/models/message.dart';
import '../../../widgets/keyboard_placeholder.dart';
import '../../providers/conversation_provider.dart';
import '../../providers/conversation_state.dart';
import '../providers/main_screen_state_provider.dart';
import 'message_bubble.dart';

class MessagesList extends HookConsumerWidget {
  const MessagesList({
    Key? key,
    required this.messages,
    required this.scrollController,
    required this.chatId,
  }) : super(key: key);

  final List<Message> messages;
  final ScrollController scrollController;
  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listKey = useState(GlobalKey<AnimatedListState>());
    final initialMessagesCount = useState(messages.length + 1);
    final dragStartPosition = useState(0.0);
    final dragPosition = useState(0.0);
    final resetAnimationController = useAnimationController();
    final isMounted = useIsMounted();

    ref.listen<ConversationState>(
      conversationStateNotifierProvider(chatId),
      (_, next) => next.whenOrNull(
        newMessagesEvent: (indexes) {
          HapticFeedback.lightImpact();
          for (final i in indexes) {
            listKey.value.currentState?.insertItem(
              i + 1,
              duration: const Duration(milliseconds: 450),
            );
          }
        },
      ),
    );

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
              child: AnimatedList(
                key: listKey.value,
                initialItemCount: initialMessagesCount.value,
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                reverse: true,
                itemBuilder: (context, i, animation) {
                  if (i == 0) {
                    return const KeyboardPlaceholder(
                      minSize: 75,
                      correction: 5,
                    );
                  }
                  final message = messages[i - 1];
                  final curvedAnimation = CurvedAnimation(
                    parent: animation,
                    curve: Curves.linearToEaseOut,
                  );
                  return ProviderScope(
                    overrides: [
                      singleMessageProvider.overrideWithValue(message)
                    ],
                    child: MessageBubble(animation: curvedAnimation),
                  );
                },
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
