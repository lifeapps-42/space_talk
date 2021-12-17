import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../models/private_chat.dart';
import 'chats_firestore_repo.dart';

final chatsRepoProvider = Provider<ChatsRepo>((ref) {
  final userState = ref.read(userStateNotifierProvider);
  final user = userState.maybeWhen(
    data: (user) => user,
    updating: (user) => user,
    orElse: () => throw 'Wrong state management',
  );
  return ChatsFirestoreRepo(user);
});

abstract class ChatsRepo {
  final User user;

  ChatsRepo(this.user);

  Future<List<Chat>> getChatsData(String uid);

  Stream<List<Chat>> getChatsStreams(String uid);

  Future<void> createChat({required User companion, required String text});

  // Future<void> postMessage(String message);

  // Future<void> createChat()
}
