import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../models/phone.dart';
import '../../../user/providers/find_companion_provider.dart';
import '../../providers/chats_provider.dart';

class CreateChatModal extends HookConsumerWidget {
  const CreateChatModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneController = useTextEditingController();
    final messageController = useTextEditingController();
    final findCompanionState = ref.watch(findCompanionStateNotifierProvider);

    final title = findCompanionState.maybeWhen(
      found: (companion) => 'Type your message for ${companion.name}',
      orElse: () => 'Type user\'s phone',
    );

    final error =
        findCompanionState.whenOrNull(noSuchUser: () => 'No such User');

    final controller = findCompanionState.maybeWhen(
      found: (_) => messageController,
      orElse: () => phoneController,
    );

    void findUser() {
      ref
          .read(findCompanionStateNotifierProvider.notifier)
          .findCompanion(PhoneNumber.fromInput(phoneController.text));
    }

    final action = findCompanionState.maybeWhen(
      found: (companion) => () {
        final text = messageController.text;
        ref
            .read(chatsStateNotifierProvider.notifier)
            .createChat(text: text, companion: companion);
        Navigator.pop(context);
      },
      searching: null,
      orElse: () => findUser,
    );

    final buttonLabel = findCompanionState.maybeWhen(
      found: (_) => 'Send message',
      orElse: () => 'Find user',
    );

    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (error != null) Text(error),
          TextField(
            controller: controller,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: action,
          child: Text(buttonLabel),
        ),
      ],
    );
  }
}
