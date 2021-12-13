import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/auth_provider.dart';
import '../providers/auth_screen_state_provider.dart';

class ProvidePhoneNumber extends HookWidget {
  const ProvidePhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Consumer(builder: (context, ref, _) {
      final isLoading = ref.watch(authScreenStateProvider).isLoading;
      void submitPhone() {
        ref
            .read(authStateNotifierProvider.notifier)
            .reguestOtpWithPhone(controller.value.text);
      }

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            readOnly: isLoading,
          ),
          ElevatedButton(
            onPressed: isLoading ? null : () => submitPhone(),
            child: const Text('Submit phone'),
          )
        ],
      );
    });
  }
}
