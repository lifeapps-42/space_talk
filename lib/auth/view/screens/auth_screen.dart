import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/auth_provider.dart';
import '../../providers/auth_state.dart';
import '../providers/auth_screen_state_provider.dart';
import '../widgets/provide_phone_number.dart';
import '../widgets/submit_name.dart';
import '../widgets/submit_otp.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authScreenState = ref.watch(authScreenStateProvider);

    ref.listen<AuthState>(
      authStateNotifierProvider,
      (_, state) => state.maybeWhen(
        authErrorEvenr: (e) => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Text(e),
          ),
        ),
        orElse: () {},
      ),
    );
    return Scaffold(
      body: Center(
        child: authScreenState.when(
          loading: (_) => const CircularProgressIndicator(),
          providePhone: (_) => const ProvidePhoneNumber(),
          submitOtp: (_, __) => const SubmitOtp(),
          submitName: (_) => const SubmitName(),
          errorEvent: (_, __) => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
