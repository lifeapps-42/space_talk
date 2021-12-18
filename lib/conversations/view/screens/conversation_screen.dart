import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/models/user.dart';
import '../providers/main_screen_state_provider.dart';
import '../widgets/main_screen_consumer.dart';
import '../widgets/parallax_background.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({Key? key, required this.user}) : super(key: key);

  static const route = 'conversation';
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Consumer(builder: (context, ref, _) {
          final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
          final title = mainScreenState.when(
            chats: () => user.phone.value,
            conversation: (chatItem) => chatItem.companion.name,
          );
          return Text(title);
        }),
        leading: Consumer(builder: (context, ref, _) {
          final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
          void goBack() {
            ref.read(mainScreenStateNotifierProvider.notifier).goToChats();
          }

          return mainScreenState.maybeWhen(
            conversation: (_) => IconButton(
              onPressed: () => goBack(),
              icon: const Icon(Icons.chevron_left_rounded),
            ),
            orElse: () => const SizedBox(),
          );
        }),
      ),
      body: const MainBodyWithParallax(),
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
      ],
    );
  }
}
