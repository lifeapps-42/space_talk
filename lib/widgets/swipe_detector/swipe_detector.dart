import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'swipe_provider.dart';

class SwipeDetector extends ConsumerWidget {
  const SwipeDetector({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleBackDragStart(DragStartDetails details) {
      ref.read(swipeProvider.notifier).startDrag(details);
    }

    void handleBackDragUpdate(DragUpdateDetails details) {
      ref.read(swipeProvider.notifier).updateDrag(details);
    }

    void handleBackDragEnd(DragEndDetails _) {
       ref.read(swipeProvider.notifier).endDrag();
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onHorizontalDragStart: handleBackDragStart,
      onHorizontalDragUpdate: handleBackDragUpdate,
      onHorizontalDragEnd: handleBackDragEnd,
      dragStartBehavior: DragStartBehavior.start,
      child: child,
    );
  }
}
