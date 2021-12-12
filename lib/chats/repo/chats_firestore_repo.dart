import 'package:cloud_firestore/cloud_firestore.dart';
import '../../utils/firebase_extensions/document_snapshot_extensions.dart';

import '../models/private_chat.dart';

import 'chats_repo_provider.dart';

class ChatsFirestoreRepo implements ChatsRepo {
  static const _kCollection = 'chats';
  final _collectionRef = FirebaseFirestore.instance
      .collection(_kCollection)
      .withConverter<Chat>(fromFirestore: (snap, _) {
    return Chat.fromJson(snap.dataWithId());
  }, toFirestore: (chat, _) {
    return chat.toJson();
  });

  Future<List<String>> _getChatsIds(String uid) async {
    final querry =
        await _collectionRef.where('users', arrayContains: uid).get();
    return querry.docs.map((e) => e.id).toList();
  }

  @override
  Stream<List<Chat>> getChatsStreams(String uid) {
    final queryStream =
        _collectionRef.where('users', arrayContains: uid).snapshots();
    return queryStream.map((snap) => snap.docs.map((e) => e.data()).toList());
  }

  @override
  Future<List<Chat>> getChatsData(String uid) async {
    final chatIds = await _getChatsIds(uid);
    final query = _collectionRef.where(FieldPath.documentId, whereIn: chatIds);
    final chats = await query.get();
    return chats.docs.map((e) => e.data()).toList();
  }
}
