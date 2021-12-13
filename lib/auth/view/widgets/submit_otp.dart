import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/auth_provider.dart';
import '../providers/auth_screen_state_provider.dart';

class SubmitOtp extends HookWidget {
  const SubmitOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Consumer(builder: (context, ref, _) {
      final isLoading = ref.watch(authScreenStateProvider).isLoading;
      void submitOtp() {
        ref
            .read(authStateNotifierProvider.notifier)
            .submitOtp(controller.text);
      }

      return Column(
        children: [
          TextField(
            controller: controller,
            readOnly: isLoading,
          ),
          ElevatedButton(
            onPressed: isLoading ? null : () => submitOtp(),
            child: const Text('Submit code'),
          )
        ],
      );
    });
  }
}
