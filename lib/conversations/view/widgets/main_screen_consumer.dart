import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/view/widgets/chats_view.dart';
import '../../../ui_kit/animations/fade_trough_with_offset.dart';
import '../providers/main_screen_state_provider.dart';
import 'conversation_screen_body.dart';

class MainScreenConsumer extends ConsumerWidget {
  const MainScreenConsumer({Key? key, required this.scrollController})
      : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
    final reversedTransition = mainScreenState.when(
      chats: () => true,
      conversation: (_) => false,
    );
    return FadeTroughWithOffsetTransition(
      reversed: reversedTransition,
      child: mainScreenState.when(
        chats: () => ChatView(scrollController: scrollController),
        conversation: (chatItem) => ConversationScreenBody(
          chatItem: chatItem,
          scrollController: scrollController,
        ),
      ),
    );
  }
}
