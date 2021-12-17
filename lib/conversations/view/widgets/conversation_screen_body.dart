import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:space_talk/conversations/view/widgets/message_input.dart';

import '../../../chats/models/chat_item.dart';
import 'conversation_consumer.dart';

class ConversationScreenBody extends HookWidget {
  const ConversationScreenBody({Key? key, required this.chatItem})
      : super(key: key);

  final ChatItem chatItem;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return Stack(
      children: [
        Positioned.fill(
            child: Background(
          leadingController: scrollController,
        )),
        Positioned.fill(
          child: ConversationConsumer(
            chatItem: chatItem,
            scrollController: scrollController,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: MessageInput(chatId: chatItem.id, scrollController: scrollController,),
        ),
      ],
    );
  }
}

class Background extends HookWidget {
  const Background({Key? key, required this.leadingController})
      : super(key: key);

  final ScrollController leadingController;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController(initialScrollOffset: 500);
    leadingController.addListener(() {
      scrollController.jumpTo((leadingController.offset / 3) + 500);
    });
    return ListView.builder(
      reverse: true,
      controller: scrollController,
      itemBuilder: (_, __) => AspectRatio(
        aspectRatio: 1,
        child: Container(
          child: Image.asset(
            'assets/Hnet.com-image.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
