import 'package:flutter/material.dart';

import '../../../ui_kit/animations/fade_trough_with_offset.dart';

class NewMessagesBadge extends StatelessWidget {
  const NewMessagesBadge({Key? key, required this.count}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    final size = count > 0 ? 23.0 : 0.0;
    return Container(
      alignment: Alignment.center,
      width: 23,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.elasticOut,
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red[900],
        ),
        child: FadeTroughWithOffsetTransition(
          axis: TransitionAxis.y,
          child: Text(
            count.toString(),
             key: Key(count.toString()),
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
