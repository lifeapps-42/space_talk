import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FullscreenLoader extends HookWidget {
  const FullscreenLoader({Key? key}) : super(key: key);

  static const _waitDuration = Duration(milliseconds: 700);
  static const _animationDuration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(false);
    final isMounted = useIsMounted();

    final child =
        isVisible.value ? const CupertinoActivityIndicator() : Container();

    void showIndicator() {
      if (isMounted.call()) {
        isVisible.value = true;
      }
    }

    Timer(_waitDuration, () => showIndicator());

    return Container(
      alignment: Alignment.center,
      child: AnimatedSwitcher(
        duration: _animationDuration,
        child: child,
      ),
    );
  }
}
