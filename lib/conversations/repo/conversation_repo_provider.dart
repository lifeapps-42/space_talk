import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../messages/models/message.dart';
import '../models/conversation_event.dart';
import 'conversation_firestore_repo.dart';

final conversationRepoProvider = Provider<ConversationRepo>((ref) => ConversationFirestoreRepo());

abstract class ConversationRepo {

  int get paginationRate;

  Future<List<Message>> fetchMessages(String chatId, {List<Message> fetchedMessages = const []});

  Stream<List<ConversationEvent>> getEventsStream(String chatId);

  Future<void> sendMessage(String chatId, Message message);

  Future<void> markAsRead(Message message);

   Stream<List<ConversationEvent>> getMessagesStream(String chatId);
}