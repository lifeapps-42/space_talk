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

  static CollectionReference<Message> _messagesCollectionRef(String chatId) {
    final path = 'chats/$chatId/messages';
    const timestampField = 'sentAt';
    return FirebaseFirestore.instance.collection(path).withConverter<Message>(
      fromFirestore: (snap, _) {
        return Message.fromJson(snap
            .dataWithId()
            .handleTimeStamp(timestampField)
            .setChatId(chatId));
      },
      toFirestore: (message, _) {
        return message.toJson().setServerTimestamp(timestampField);
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
    final queryStream = _collectionRef
        .where('users', arrayContains: uid)
        .orderBy('lastMessage.sentAt', descending: true)
        .snapshots();
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
      chatId: 'temp',
      readUsersIds: [],
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
      messagesCount: 1,
      readBy: {user.uid: 1},
    );
    final chatRef = await _collectionRef.add(chat);
    final messageWithChatId = message.copyWith(chatId: chatRef.id);
    await _messagesCollectionRef(chatRef.id).doc().set(messageWithChatId);
  }

  // @override
  // Future<void> postMessage({required ChatItem chat, required Message message}) async {
  //   final chatRef = _collectionRef.doc(chatId);
  //   final messages
  //   docRef.set(data)
  // }
}
