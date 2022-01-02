import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'swipe_provider.dart';

class SwipeDetectorConsumer extends HookConsumerWidget {
  const SwipeDetectorConsumer({
    required this.minOffset,
    required this.maxDraggableOffset,
    required this.swipeDirection,
    required this.resist,
    required this.action,
    this.onMinOffset,
    this.onMinOffsetCancel,
    required this.child,
    this.behavior = HitTestBehavior.deferToChild,
    this.resetOffsetOnDone = false,
    Key? key,
  }) : super(key: key);

  final double minOffset;
  final double? maxDraggableOffset;
  final SwipeDirection swipeDirection;
  final bool resist;
  final VoidCallback action;
  final VoidCallback? onMinOffset;
  final VoidCallback? onMinOffsetCancel;
  final Widget child;
  final HitTestBehavior behavior;
  final bool resetOffsetOnDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = useState(MediaQuery.of(context).size.width);
    final stayCalm = useState(true);
    final dragDelta = useState(0.0);
    final dragPosition = useState(0.0);
    final resetAnimationController = useAnimationController();
    final minOffsetDone = useState(false);
    final int sign = swipeDirection == SwipeDirection.right ? 1 : -1;
    final isMounted = useIsMounted();

    Rect? getBounds() {
      final box = context.findRenderObject() as RenderBox?;
      if (box == null) return null;
      final offset = box.localToGlobal(Offset.zero);
      final size = box.size;
      final rect = Rect.fromLTWH(offset.dx, offset.dy, size.width, size.height);
      // print(rect);
      return rect;
    }

    double respectDirection(double delta) {
      switch (swipeDirection) {
        case SwipeDirection.right:
          return delta.clamp(0.0, 700);
        case SwipeDirection.left:
          return delta.clamp(-700, 0.0);
      }
    }

    void inrerruptGesture() {
      ref.read(swipeProvider.notifier).endDrag();
    }

    void swipeStarted(SwipeData data) {
      final offset = Offset(data.start, data.crossAxisStart);
      final bounds = getBounds();
      if (bounds != null && bounds.contains(offset)) {
        // print(bounds.toString());
        // print(offset);
        stayCalm.value = false;
      }
    }

    double withResistance(double dragDelta) {
      final delta = dragDelta.abs();
      final progress = ( delta / screenWidth.value);
      print(progress);
      final r = math.pow(delta, 1 - (progress / 5)) as double;
      return dragDelta.isNegative ? -r : r ;
    }

    void swipeContinues(SwipeData data) {
      if (!stayCalm.value) {
        // if ((swipeDirection == SwipeDirection.left && data.delta < 0) ||
        //     (swipeDirection == SwipeDirection.right && data.delta > 0)) {
          // final offset = Offset(data.start + data.delta,
          //     data.crossAxisStart + data.crossAxisDelta);
          // final bounds = getBounds();
          // if (bounds != null && bounds.contains(offset)) {
          dragDelta.value = data.delta;
          if (maxDraggableOffset != null &&
              dragDelta.value > maxDraggableOffset!) return;
          dragPosition.value = resist
              ? withResistance(respectDirection(dragDelta.value))
              : respectDirection(dragDelta.value);
          if (dragPosition.value * sign > minOffset && !minOffsetDone.value) {
            minOffsetDone.value = true;
            if (onMinOffset != null) {
              onMinOffset!();
            }
          }
          if (dragPosition.value * sign < minOffset && minOffsetDone.value) {
            minOffsetDone.value = false;
            if (onMinOffsetCancel != null) {
              onMinOffsetCancel!();
            }
          }
          // } else {
          //   inrerruptGesture();
          // }
        // } else {
        //   stayCalm.value = true;
        // }
      }
    }

    void resetOffset() {
      final dragEnd = dragPosition.value;
      resetAnimationController
        ..reset()
        ..duration = const Duration(milliseconds: 400);

      final animation = CurvedAnimation(
        parent: resetAnimationController,
        curve: Curves.linearToEaseOut,
      );

      animation.addListener(() {
        if (isMounted.call()) {
          dragPosition.value = (dragEnd - (dragEnd * animation.value));
        }
      });
      resetAnimationController.forward();
    }

    // void handleBackDragEnd(DragEndDetails _) {
    //   if (resetOffsetOnDone) {
    //     resetOffset();
    //   }
    //   if (maxDraggableOffset != null &&
    //       dragStartPosition.value > maxDraggableOffset!) return;
    //   if (dragPosition.value * sign > minOffset) {
    //     action();
    //   } else {
    //     resetOffset();
    //   }
    // }

    void swipeCompleted(SwipeData data) {
      if (stayCalm.value) return;
      if (resetOffsetOnDone) {
        resetOffset();
      }
      // if (maxDraggableOffset != null && dragDelta.value > maxDraggableOffset!) {
      //   return;
      // }
      if (dragDelta.value * sign > minOffset) {
        print('OK!');
        action();
      } else {
        resetOffset();
      }
      stayCalm.value = true;
    }

    ref.listen<SwipeState>(swipeProvider, (previous, next) {
      previous!.whenOrNull(
        stop: () => next.whenOrNull(
          inProgress: swipeStarted,
        ),
        inProgress: (_) => next.whenOrNull(
          inProgress: swipeContinues,
          doneEvent: swipeCompleted,
        ),
      );
    });

    return Transform.translate(
      offset: Offset(dragPosition.value, 0.0),
      child: child,
    );
  }
}

enum SwipeDirection {
  left,
  right,
}
