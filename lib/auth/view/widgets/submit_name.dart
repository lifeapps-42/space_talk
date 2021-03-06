import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/providers/user_provider.dart';
import '../providers/auth_screen_state_provider.dart';

class SubmitName extends HookWidget {
  const SubmitName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Consumer(builder: (context, ref, _) {
      final isLoading = ref.watch(authScreenStateProvider).isLoading;
      void submitName() {
        ref
            .read(userStateNotifierProvider.notifier)
            .registerUser(controller.text);
      }

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            readOnly: isLoading,
          ),
          ElevatedButton(
            onPressed: isLoading ? null : submitName,
            child: const Text('Submit name'),
          )
        ],
      );
    });
  }
}
