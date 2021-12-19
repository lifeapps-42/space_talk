import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_talk/ui_kit/animations/fade_trough_with_offset.dart';
import 'package:space_talk/widgets/fullscreen_loader.dart';

import '../../providers/chat_items_provider.dart';
import 'chats_list.dart';

class ChatView extends ConsumerWidget {
  const ChatView({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatItemsState = ref.watch(chatItemsProvider);
    return FadeTroughWithOffsetTransition(
      axis: TransitionAxis.z,
      reversed: true,
      child: chatItemsState.when(
        loading: () => const FullscreenLoader(),
        noChats: () => const Center(child: Text('No chats yet')),
        subscribed: (chats) => ChatsItemsList(
          chats: chats,
          scrollController: scrollController,
        ),
      ),
    );
  }
}
