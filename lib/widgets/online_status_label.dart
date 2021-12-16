import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../user/providers/companions_provider.dart';

class OnlineStatusLabel extends ConsumerWidget {
  const OnlineStatusLabel({Key? key, required this.userId, required this.chatId}) : super(key: key);

  final String userId;
  final String chatId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(companionsStateNotifierProvider).whenOrNull(
        subscribed: (users, _) =>
            users.firstWhere((element) => element.uid == userId));

    final text = user == null ? 'connecting...' : user.status.when(
      online: () => 'online',
      offline: (lastSeen) => 'last seen $lastSeen',
      typing: (chatId) => chatId == this.chatId ? 'typing...' : 'online',
    );

    return Text(text);
  }
}
