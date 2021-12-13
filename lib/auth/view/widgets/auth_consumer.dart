import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/providers/user_provider.dart';
import '../screens/auth_screen.dart';

class AuthConsumer extends ConsumerWidget {
  const AuthConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userStateNotifierProvider);
    return userState.maybeWhen(
      data: (user) => Text(user.uid),
      updating: (_) => Container(),
      orElse: () => const AuthScreen()
    );
  }
}
