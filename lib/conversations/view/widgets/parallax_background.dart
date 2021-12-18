import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/main_screen_state.dart';
import '../providers/main_screen_state_provider.dart';

class ParallaxBackground extends HookConsumerWidget {
  const ParallaxBackground({Key? key, required this.leadingController})
      : super(key: key);

  final ScrollController leadingController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController(initialScrollOffset: 5000);
    final crossScrollController = useScrollController();
    final mainScreenState = ref.watch(mainScreenStateNotifierProvider);
    final screenWidth = MediaQuery.of(context).size.width;

    final isReversed = mainScreenState.maybeWhen(
      conversation: (_) => true,
      orElse: () => false,
    );

    leadingController.addListener(() {
      scrollController.jumpTo(isReversed
          ? -(leadingController.offset / 3) + 5000
          : (leadingController.offset / 3) + 5000);
    });

    void scrollHorizontal(double offset) {
      crossScrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 450),
        curve: Curves.linearToEaseOut,
      );
    }

    void scrollForward() {
      final offset = screenWidth / 3;
      scrollHorizontal(offset);
    }

    void scrollBack() {
      scrollHorizontal(0);
    }

    ref.listen<MainScreenState>(
      mainScreenStateNotifierProvider,
      (previous, next) {
        previous!.when(
          chats: () => next.whenOrNull(conversation: (_) => scrollForward()),
          conversation: (_) => next.whenOrNull(chats: () => scrollBack()),
        );
      },
    );
    return ListView.builder(
      itemExtent: 400,
      scrollDirection: Axis.horizontal,
      controller: crossScrollController,
      itemBuilder: (_, __) => _TilesColumn(
        scrollController: scrollController,
      ),
    );
  }
}

class _TilesColumn extends StatelessWidget {
  const _TilesColumn({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemBuilder: (_, __) {
        return AspectRatio(
          aspectRatio: 1,
          child: Container(
            child: Image.asset(
              'assets/Hnet.com-image.jpg',
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}
