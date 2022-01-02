import 'package:flutter/material.dart';

class KeyboardPlaceholder extends StatelessWidget {
  const KeyboardPlaceholder(
      {Key? key, this.correction, this.minSize, this.animated = true})
      : super(key: key);

  final double? correction;
  final double? minSize;
  final bool animated;

  @override
  Widget build(BuildContext context) {
    final height =
        (MediaQuery.of(context).viewInsets.bottom + (correction ?? 0.0))
            .clamp(minSize ?? 0.0, 2000.0);
    return animated
        ? AnimatedSize(
            duration: const Duration(milliseconds: 450),
            curve: Curves.linearToEaseOut,
            child: Container(
              height: height,
            ),
          )
        : Container(
            height: height,
          );
  }
}
