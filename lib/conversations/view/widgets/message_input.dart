import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/keyboard_placeholder.dart';
import '../../providers/conversation_provider.dart';

class MessageInput extends HookConsumerWidget {
  const MessageInput({required this.chatId, Key? key, required this.scrollController}) : super(key: key);

  final String chatId;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messageController = useTextEditingController();
    final focusNode = useFocusNode();
    final canSend = useState(false);

    messageController.addListener(() {
      canSend.value = messageController.text.trim().isNotEmpty;
    });

    void sendMessage() {
      ref
          .read(conversationStateNotifierProvider(chatId).notifier)
          .sendMessage(messageController.text);
      messageController.clear();
    }

    scrollController.addListener(() {
      focusNode.unfocus();
    });

    return ClipRect(
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 15, sigmaY: 15, tileMode: TileMode.mirror),
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
                              color: Colors.black12),
                          child: TextField(
                            focusNode: focusNode,
                            style: const TextStyle(color: Colors.white70),
                            controller: messageController,
                            minLines: 1,
                            maxLines: 5,
                            decoration: const InputDecoration(
                          isDense: true,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(4)),
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
    );
  }
}
