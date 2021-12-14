import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../auth/providers/auth_provider.dart';
import '../../../user/models/user.dart';
import '../modals/create_chat_modal.dart';
import '../widgets/chats_view.dart';

class ChatsScreen extends ConsumerWidget {
  const ChatsScreen({Key? key, required this.user}) : super(key: key);

  static const route = 'chats';
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void logOut() {
      ref.read(authStateNotifierProvider.notifier).logout();
    }

    void findUserAndCreateChat() {
      showDialog(
        context: context,
        builder: (context) => const CreateChatModal(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(user.phone.value),
        actions: [
          IconButton(
            onPressed: () => logOut(),
            icon: const Icon(Icons.logout_rounded),
          )
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => findUserAndCreateChat()),
      body: const ChatView(),
    );
  }
}
