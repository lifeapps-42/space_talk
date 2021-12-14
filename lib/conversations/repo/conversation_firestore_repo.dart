import 'package:cloud_firestore/cloud_firestore.dart';

import '../../chats/models/private_chat.dart';
import '../../messages/models/message.dart';
import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/conversation_event.dart';
import 'conversation_repo_provider.dart';

class ConversationFirestoreRepo implements ConversationRepo {
  static CollectionReference<Message> _messagesReference(String chatId) {
    final path = 'chats/$chatId/messages';
    return FirebaseFirestore.instance.collection(path).withConverter<Message>(
      fromFirestore: (snap, _) {
        return Message.fromJson(snap.dataWithId());
      },
      toFirestore: (chat, _) {
        return chat.toJson();
      },
    );
  }

  static CollectionReference<ConversationEvent> _eventsReference(
      String chatId) {
    final path = 'chats/$chatId/events';
    return FirebaseFirestore.instance
        .collection(path)
        .withConverter<ConversationEvent>(
      fromFirestore: (snap, _) {
        return ConversationEvent.fromJson(snap.dataWithId());
      },
      toFirestore: (chat, _) {
        return chat.toJson();
      },
    );
  }

  static CollectionReference<Chat> _chatsReference() {
    const path = 'chats';
    return FirebaseFirestore.instance.collection(path).withConverter<Chat>(
      fromFirestore: (snap, _) {
        return Chat.fromJson(snap.dataWithId());
      },
      toFirestore: (chat, _) {
        return chat.toJson();
      },
    );
  }

  @override
  int get paginationRate => 50;

  @override
  Future<List<Message>> fetchMessages(String chatId,
      {List<Message> fetchedMessages = const []}) async {
    final collectionRef = _messagesReference(chatId);
    final snap = await collectionRef.orderBy('sentAt', descending: true).limit(paginationRate).get();
    return snap.docs.map((e) => e.data()).toList();
  }

  @override
  Stream<List<ConversationEvent>> getEventsStream(String chatId) {
    final collectionRef = _eventsReference(chatId);
    final snapStream = collectionRef.orderBy('message.sentAt', descending: true).limit(1).snapshots();
    return snapStream.map((snap) => snap.docs.map((e) => e.data()).toList());
  }

  @override
  Future<void> sendMessage(String chatId, Message message) async {
    final messageId =  await _postMessage(chatId, message);
    final messageWithId = message.copyWith(id: messageId);
    await _postEvent(chatId, messageWithId);
    await _updateChat(chatId, messageWithId);
  }

  Future<String> _postMessage(String chatId, Message message) async {
    final collectionRef = _messagesReference(chatId);
    final docRef = await collectionRef.add(message);
    return docRef.id;
  }

  Future<void> _postEvent(String chatId, Message message) {
    final collectionRef = _eventsReference(chatId);
    final event = ConversationAddEvent(message);
    return collectionRef.doc().set(event);
  }

  Future<void> _updateChat(String chatId, Message message) {
    final collectionRef = _chatsReference();
    final data = {'lastMessage': message.toJson()};
    return collectionRef.doc(chatId).update(data);
  }
}
