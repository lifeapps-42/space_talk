import 'dart:async';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../../widgets/keyboard_placeholder.dart';
import '../../../widgets/size_changed_listener.dart';
import '../../providers/conversation_provider.dart';
import '../providers/input_control_zone_controller.dart';
import '../providers/main_screen_state.dart';
import '../providers/main_screen_state_provider.dart';

class MessageInput extends HookConsumerWidget {
  const MessageInput({
    Key? key,
    required this.scrollController,
    required this.inputWidgetSizeNotifier,
  }) : super(key: key);

  final ScrollController scrollController;
  final ValueNotifier<Size> inputWidgetSizeNotifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
    final messageController = useTextEditingController();
    final focusNode = useFocusNode();
    final canSend = useState(false);
    final stateController = ref.read(inputControlZoneController.notifier);
    final messageInputState = ref.watch(inputControlZoneController);

    final offsetTween = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    );

    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 450));

    final offsetAnimation = offsetTween.animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linearToEaseOut,
      reverseCurve: Curves.linearToEaseOut.flipped,
    ));

    canSend.value = mainScreenState.when(
      chats: () => false,
      conversation: (_) => messageController.text.isNotEmpty,
    );

    void handleScrollEvents() => messageInputState.whenOrNull(
          inactive: () {
            if (scrollController.offset < -10) {
              HapticFeedback.selectionClick();
              stateController.requestFocus();
            }
          },
        );

    useEffect(() {
      scrollController.addListener(handleScrollEvents);
      return () => scrollController.removeListener(handleScrollEvents);
    }, []);

    ref.listen<MessageInputState>(inputControlZoneController, (previous, next) {
      next.whenOrNull(
        requestFocusEvent: () => focusNode.requestFocus(),
        unfocusEvent: () => focusNode.unfocus(),
      );
    });

    void showInput() {
      animationController.forward();
    }

    void hideInput() {
      focusNode.unfocus();
      animationController.reverse();
    }

    useValueChanged<bool, void>(focusNode.hasFocus, (_, __) {
      scheduleMicrotask(() {
        focusNode.hasFocus
            ? stateController.typingStarted()
            : stateController.focusLost();
      });
    });

    void sendMessage() {
      if (messageController.text.trim().isEmpty) return;
      final currentChat =
          ref.read(mainScreenStateNotifierProvider.notifier).chat;
      ref
          .read(conversationStateNotifierProvider(currentChat.id).notifier)
          .sendMessage(messageController.text);
      messageController.clear();
    }

    void saveDraft(ChatItem chatItem) {
      final draft = messageController.text;
      ref
          .read(mainScreenStateNotifierProvider.notifier)
          .setDraft(chatItem, draft);
    }

    void pasteDraft(String? draft) {
      messageController.text = draft ?? '';
    }

    ref.listen<MainScreenState>(
      mainScreenStateNotifierProvider,
      (previous, next) {
        previous!.when(
          chats: () => next.whenOrNull(
            conversation: (data) {
              final draft = data.draftMessage;
              pasteDraft(draft);
              showInput();
            },
          ),
          conversation: (data) => next.whenOrNull(
            chats: () {
              saveDraft(data.chatItem);
              hideInput();
            },
          ),
        );
      },
    );

    return SizeChangedNotifier(
      sizeNotifier: inputWidgetSizeNotifier,
      child: SlideTransition(
        position: offsetAnimation,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 30,
              sigmaY: 40,
              tileMode: TileMode.mirror,
            ),
            child: GestureDetector(
              onVerticalDragStart: stateController.startDrag,
              onVerticalDragUpdate: stateController.updateDrag,
              onVerticalDragEnd: stateController.endDrag,
              onVerticalDragCancel: () => stateController.endDrag(null),
              dragStartBehavior: DragStartBehavior.start,
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromRGBO(59, 29, 27, 0.7),
                child: Column(
                  children: [
                    Container(
                      height: 0.5,
                      color: Colors.white10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black12,
                                  ),
                                  child: TextField(
                                    focusNode: focusNode,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                    controller: messageController,
                                    minLines: 1,
                                    maxLines: 5,
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(4),
                                      hintText: 'message...',
                                      hintStyle:
                                          TextStyle(color: Colors.white30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: canSend.value ? () => sendMessage() : null,
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 45,
                              child: const Icon(
                                Icons.send,
                                color: Colors.white54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const InputControlZone(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputControlZone extends HookConsumerWidget {
  const InputControlZone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inputState = ref.watch(inputControlZoneController);

    return inputState.maybeWhen(
      dismissing: (_) => const _DissmissingContainer(),
      closingWithAnimationEvent: () => const _DissmissingContainer(),
      orElse: () => const _Keyboard(),
    );
  }
}

class _DissmissingContainer extends HookConsumerWidget {
  const _DissmissingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inputState = ref.watch(inputControlZoneController);
    final bottomPadding = useState(MediaQuery.of(context).viewPadding.bottom);
    final bottominsets = useState(MediaQuery.of(context).viewInsets.bottom);
    final height = useState(0.0);
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 430));
    final animation = useState(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linearToEaseOut,
      ),
    );

    inputState.maybeWhen(
      dismissing: (data) {
        height.value = (bottominsets.value - data.delta).clamp(0.0, 2000.0);
      },
      orElse: () {},
    );

    ref.listen<MessageInputState>(inputControlZoneController, (_, next) {
      next.whenOrNull(
        closingWithAnimationEvent: () {
          final currentHeight = height.value;
          final targetHeight = bottomPadding.value;
          final tween = Tween<double>(begin: currentHeight, end: targetHeight);
          animation.value.addListener(() {
            height.value = tween.transform(animation.value.value);
          });
          // controller.
          final result = controller.forward(from: 0.0);
          result.whenComplete(() {
            ref
                .read(inputControlZoneController.notifier)
                .inputClosedAfterAnimation();
            animation.value.removeListener(() {});
          });
        },
      );
    });
    return Container(
      height: height.value,
    );
  }
}

class _Keyboard extends StatelessWidget {
  const _Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const KeyboardPlaceholder(
      animated: true,
      minSize: 34,
    );
  }
}
