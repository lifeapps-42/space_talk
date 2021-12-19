import 'package:cloud_firestore/cloud_firestore.dart';

import '../../chats/models/private_chat.dart';
import '../../messages/models/message.dart';
import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/conversation_event.dart';
import 'conversation_repo_provider.dart';

class ConversationFirestoreRepo implements ConversationRepo {
  static CollectionReference<Message> _messagesReference(String chatId) {
    final path = 'chats/$chatId/messages';
    const timestampField = 'sentAt';
    return FirebaseFirestore.instance.collection(path).withConverter<Message>(
      fromFirestore: (snap, _) {
        return Message.fromJson(
            snap.dataWithId().handleTimeStamp(timestampField));
      },
      toFirestore: (message, _) {
        return message.toJson().setServerTimestamp(timestampField);
      },
    );
  }

  static CollectionReference<ConversationEvent> _eventsReference(String chatId,
      {bool setServerTime = false}) {
    final path = 'chats/$chatId/events';
    const timestampField = 'sentAt';
    const messageField = 'message';
    return FirebaseFirestore.instance
        .collection(path)
        .withConverter<ConversationEvent>(
      fromFirestore: (snap, _) {
        final json = snap.dataWithId();
        final message = json[messageField] as Map<String, dynamic>;
        final messageWithDate = message.handleTimeStamp(timestampField);
        json[messageField] = messageWithDate;
        return ConversationEvent.fromJson(json);
      },
      toFirestore: (chat, _) {
        if (setServerTime) {
          final message = chat.toJson()[messageField] as Map<String, dynamic>;
          final messageWithDate = message.setServerTimestamp(timestampField);
          return chat.toJson()..[messageField] = messageWithDate;
        } else {
          return chat.toJson();
        }
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
    final snap = await collectionRef
        .orderBy('sentAt', descending: true)
        .limit(paginationRate)
        .get();
    return snap.docs.map((e) => e.data()).toList();
  }

  @override
  Stream<List<ConversationEvent>> getEventsStream(String chatId) {
    final collectionRef = _eventsReference(chatId);
    final snapStream = collectionRef
        .orderBy('message.sentAt', descending: true)
        .limit(1)
        .snapshots();
    return snapStream.map((snap) => snap.docs.map((e) => e.data()).toList());
  }

  @override
  Future<void> sendMessage(String chatId, Message message) async {
    final newMessage = await _postMessage(chatId, message);
    await _postEvent(chatId, newMessage);
    await _updateChat(chatId, newMessage);
  }

  Future<Message> _postMessage(String chatId, Message message) async {
    final collectionRef = _messagesReference(chatId);
    final docRef = await collectionRef.add(message);
    final created = await docRef.get();
    return created.data()!;
  }

  Future<void> _postEvent(String chatId, Message message) {
    final collectionRef = _eventsReference(chatId, setServerTime: false);
    final event = ConversationAddEvent(message);
    return collectionRef.doc().set(event);
  }

  Future<void> _updateChat(String chatId, Message message) {
    final collectionRef = _chatsReference();
    final data = {'lastMessage': message.toJson()};
    return collectionRef.doc(chatId).update(data);
  }
}
