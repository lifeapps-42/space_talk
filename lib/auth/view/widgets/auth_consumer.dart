import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/auth_provider.dart';
import '../screens/auth_screen.dart';

class AuthConsumer extends ConsumerWidget {
  const AuthConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateNotifierProvider);
    return authState.maybeWhen(
      authenticated: (_) => Container(),
      orElse: () => const AuthScreen(),
    );
  }
}
