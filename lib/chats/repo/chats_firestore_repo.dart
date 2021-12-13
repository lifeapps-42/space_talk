import 'package:cloud_firestore/cloud_firestore.dart';

import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/private_chat.dart';
import 'chats_repo_provider.dart';

class ChatsFirestoreRepo implements ChatsRepo {
  @override
  final User user;

  ChatsFirestoreRepo(this.user);

  static const _kCollection = 'chats';
  final _collectionRef =
      FirebaseFirestore.instance.collection(_kCollection).withConverter<Chat>(
    fromFirestore: (snap, _) {
      return Chat.fromJson(snap.dataWithId());
    },
    toFirestore: (chat, _) {
      return chat.toJson();
    },
  );

  CollectionReference<Message> _messagesCollectionRef(
      DocumentReference<Chat> chatRef) {
    return chatRef.collection('messages').withConverter<Message>(
      fromFirestore: (snap, _) {
        return Message.fromJson(snap.dataWithId());
      },
      toFirestore: (message, _) {
        return message.toJson();
      },
    );
  }

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
    if (chatIds.isEmpty) return [];
    final query = _collectionRef.where(FieldPath.documentId, whereIn: chatIds);
    final chats = await query.get();
    return chats.docs.map((e) => e.data()).toList();
  }

  @override
  Future<void> createChat({
    required User companion,
    required String text,
  }) async {
    final message = Message(
      readUsersIds: {},
      sentAt: DateTime.now(),
      authorId: user.uid,
      text: text,
    );
    final chat = Chat(
      lastMessage: message,
      users: {
        user.uid,
        companion.uid,
      },
    );
    final chatRef = await _collectionRef.add(chat);
    await _messagesCollectionRef(chatRef).doc().set(message);
  }

  // @override
  // Future<void> postMessage({required ChatItem chat, required Message message}) async {
  //   final chatRef = _collectionRef.doc(chatId);
  //   final messages
  //   docRef.set(data)
  // }
}
