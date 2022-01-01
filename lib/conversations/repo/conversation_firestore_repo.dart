import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../chats/models/private_chat.dart';
import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import '../../user/providers/user_provider.dart';
import '../../utils/firebase_extensions/document_snapshot_extensions.dart';
import '../models/conversation_event.dart';
import 'conversation_repo_provider.dart';

class ConversationFirestoreRepo implements ConversationRepo {
  final User _user;

  ConversationFirestoreRepo(Ref ref)
      : _user = ref.read(userStateNotifierProvider.notifier).user!;

  static CollectionReference<Message> _messagesReference(String chatId) {
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
  Stream<List<ConversationEvent>> getMessagesStream(String chatId) {
    final collectionRef = _messagesReference(chatId);
    final transormer = StreamTransformer<QuerySnapshot<Message>,
            List<ConversationEvent>>.fromHandlers(
        handleData: _handleTransformation);
    final snapStream = collectionRef
        .where(
          'sentAt',
          isGreaterThan: Timestamp.fromMillisecondsSinceEpoch(10000000),
        )
        .orderBy('sentAt', descending: true)
        .limit(paginationRate)
        .snapshots();
    return snapStream.transform(transormer);
  }

  static void _handleTransformation(
      QuerySnapshot<Message> snap, EventSink<List<ConversationEvent>> sink) {
    final changes = snap.docChanges;
    final events = <ConversationEvent>[];
    for (final event in changes) {
      switch (event.type) {
        case DocumentChangeType.added:
          events.add(ConversationAddEvent(event.doc.data()!));
          break;
        case DocumentChangeType.removed:
          events.add(ConversationDeleteEvent(event.doc.data()!));
          break;
        case DocumentChangeType.modified:
          events.add(ConversationEditEvent(event.doc.data()!));
          break;
      }
    }
    sink.add(events);
  }

  @override
  Future<void> sendMessage(String chatId, Message message) async {
    _updateChatOnNewMessage(message);
    await _postMessage(chatId, message);
    // final event = ConversationAddEvent(newMessage);
    // await _postEvent(event);
    // await _updateChat(chatId, newMessage);
  }

  @override
  Future<void> markAsRead(Message message, bool isMyMessage) async {
    final messageRef = _messagesReference(message.chatId).doc(message.id);
    final union = FieldValue.arrayUnion([_user.uid]);
    final data = {'readUsersIds': union};
    if(!isMyMessage) {
      _updateChatOnReadEvent(message.chatId, 1);
    }
    return messageRef.update(data);

    // await _postEvent(event);
  }

  Future<Message> _postMessage(String chatId, Message message) async {
    final collectionRef = _messagesReference(chatId);
    final docRef = await collectionRef.add(message);
    final created = await docRef.get();
    return created.data()!;
  }

  Future<void> _updateChatOnNewMessage(Message message) {
    final collectionRef = _chatsReference();
    final data = {
      'lastMessage': message.toJson(),
      'messagesCount': FieldValue.increment(1),
      'readBy.${_user.uid}': FieldValue.increment(1),
    };
    return collectionRef.doc(message.chatId).update(data);
  }

  Future<void> _updateChatOnReadEvent(String chatId, int readMessagesCount) {
    final collectionRef = _chatsReference();
    final data = {
      'readBy.${_user.uid}': FieldValue.increment(1),
    };
    return collectionRef.doc(chatId).update(data);
  }
}
