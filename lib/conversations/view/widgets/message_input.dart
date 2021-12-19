import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../chats/models/chat_item.dart';
import '../../../widgets/keyboard_placeholder.dart';
import '../../providers/conversation_provider.dart';
import '../providers/main_screen_state.dart';
import '../providers/main_screen_state_provider.dart';

class MessageInput extends HookConsumerWidget {
  const MessageInput({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
    final messageController = useTextEditingController();
    final focusNode = useFocusNode();
    final canSend = useState(false);

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
      conversation: (_) => true,
    );

    messageController.addListener(() {
      canSend.value = messageController.text.trim().isNotEmpty;
    });

    void showInput() {
      animationController.forward();
    }

    void hideInput() {
      focusNode.unfocus();
      animationController.reverse();
    }

    void sendMessage() {
      final currentChat =
          ref.read(mainScreenStateNotifierProvider.notifier).chat;
      ref
          .read(conversationStateNotifierProvider(currentChat.id).notifier)
          .sendMessage(messageController.text);
      messageController.clear();
    }

    scrollController.addListener(() {
      focusNode.unfocus();
    });

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

    return SlideTransition(
      position: offsetAnimation,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 15, sigmaY: 15, tileMode: TileMode.mirror),
          child: Container(
            alignment: Alignment.center,
            color: const Color.fromRGBO(59, 29, 27, 0.24),
            child: Column(
              children: [
                Container(
                  height: 0.5,
                  color: Colors.black38,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12,
                            ),
                            child: TextField(
                              focusNode: focusNode,
                              style: const TextStyle(color: Colors.white70),
                              controller: messageController,
                              minLines: 1,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(4),
                                hintText: 'message...',
                                hintStyle: TextStyle(color: Colors.white30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: canSend.value ? () => sendMessage() : null,
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 45,
                        child: const Icon(
                          Icons.send,
                        ),
                      ),
                    ),
                  ],
                ),
                const KeyboardPlaceholder(
                  correction: 10,
                  minSize: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
