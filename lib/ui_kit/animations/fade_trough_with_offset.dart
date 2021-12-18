import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

enum TransitionAxis {
  x,
  y,
  z,
}

class FadeTroughWithOffsetTransition extends StatelessWidget {
  const FadeTroughWithOffsetTransition({
    Key? key,
    this.axis = TransitionAxis.x,
    this.reversed = false,
    required this.child,
  }) : super(key: key);

  final TransitionAxis axis;
  final bool reversed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final type = <TransitionAxis, SharedAxisTransitionType>{
      TransitionAxis.x: SharedAxisTransitionType.horizontal,
      TransitionAxis.y: SharedAxisTransitionType.vertical,
      TransitionAxis.z: SharedAxisTransitionType.scaled,
    };
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: PageTransitionSwitcher(
        reverse: reversed,
        duration: const Duration(milliseconds: 450),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            child: child,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: type[axis]!,
          );
        },
        child: child,
      ),
    );
  }
}
