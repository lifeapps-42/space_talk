import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../chats/view/modals/create_chat_modal.dart';
import '../../../ui_kit/colors.dart';
import '../../../user/models/user.dart';
import '../providers/main_screen_state_provider.dart';
import '../widgets/main_screen_consumer.dart';
import '../widgets/message_input.dart';
import '../widgets/parallax_background.dart';

class ConversationScreen extends ConsumerWidget {
  const ConversationScreen({Key? key, required this.user}) : super(key: key);

  static const route = 'conversation';
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainScreenState = ref.watch(mainScreenStateNotifierProvider);

    void goBack() {
      ref.read(mainScreenStateNotifierProvider.notifier).goToChats();
    }

    void findUserAndCreateChat() {
      showDialog(
        context: context,
        builder: (context) => const CreateChatModal(),
      );
    }

    final title = mainScreenState.when(
      chats: () => user.phone.value,
      conversation: (data) => data.chatItem.companion.name,
    );
    final leading = mainScreenState.maybeWhen(
      conversation: (_) => IconButton(
        onPressed: () => goBack(),
        icon: const Icon(Icons.chevron_left_rounded),
      ),
      orElse: () => const SizedBox(),
    );

    final fab = mainScreenState.whenOrNull(chats: ()=> FloatingActionButton(
      onPressed: () => findUserAndCreateChat(),
      child: const Icon(Icons.comment_outlined),
      backgroundColor: TalkColors.main,
    ));

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(title),
          leading: leading,
        ),
        body: const MainBodyWithParallax(),
        floatingActionButton: fab,
      ),
    );
  }
}

class MainBodyWithParallax extends HookWidget {
  const MainBodyWithParallax({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Stack(
      children: [
        Positioned.fill(
          child: ParallaxBackground(leadingController: scrollController),
        ),
        Positioned.fill(
          child: MainScreenConsumer(
            scrollController: scrollController,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: MessageInput(
            scrollController: scrollController,
          ),
        ),
      ],
    );
  }
}
