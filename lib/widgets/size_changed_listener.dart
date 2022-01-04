import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SizeChangedNotifier extends HookWidget {
  const SizeChangedNotifier({
    Key? key,
    required this.sizeNotifier,
    required this.child,
  }) : super(key: key);

  final ValueNotifier<Size> sizeNotifier;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final key = useState(GlobalKey());

    void setSize() {
      scheduleMicrotask(() =>
          sizeNotifier.value = key.value.currentContext?.size ?? Size.zero);
    }

    useEffect(() {
      setSize();
    }, []);
    bool notify() {
      setSize();
      return false;
    }

    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) => notify(),
      child: SizeChangedLayoutNotifier(
        child: Container(
          key: key.value,
          child: child,
        ),
      ),
    );
  }
}
