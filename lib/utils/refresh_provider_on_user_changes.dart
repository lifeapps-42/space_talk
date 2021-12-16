import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../user/providers/user_provider.dart';
import '../user/providers/user_state.dart';

void refreshOnUserChanges(Ref ref, ProviderBase provider, {VoidCallback? callback}) {
  ref.listen<UserState>(userStateNotifierProvider, (previous, next) {
    if (previous == null) return;
    previous.maybeWhen(
      data: (_) {},
      orElse: () => next.whenOrNull(
        data: (_) {
          if(callback != null) callback();
          return ref.refresh(provider);
        },
      ),
    );
  });
}
