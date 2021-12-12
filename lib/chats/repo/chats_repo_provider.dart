import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/private_chat.dart';

import 'chats_firestore_repo.dart';

final chatsRepoProvider = Provider<ChatsRepo>((ref) => ChatsFirestoreRepo());

abstract class ChatsRepo {

  Future<List<Chat>> getChatsData(String uid);

  Stream<List<Chat>> getChatsStreams(String uid);
}