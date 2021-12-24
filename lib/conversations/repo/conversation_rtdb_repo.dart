

// class ConversationRtdbRepo  {
//   final rtdb = FirebaseDatabase.instance;

//   static String _messagesPath(
//       {required String chatId, required String packId}) {
//     return '${_packPath(chatId, packId)}/messages';
//   }

//   static String _messagesCounterPath(
//       {required String chatId, required String packId}) {
//     return '${_packPath(chatId, packId)}/lastMessage';
//   }

//   static String _packCounterPath(String chatId) {
//     return '${_chatPath(chatId)}/lastPack';
//   }

//   static String _packPath(String chatId, String packId) {
//     return '${_chatPath(chatId)}/packs/$packId';
//   }

//   static String _chatPath(String chatId) {
//     return 'chats/messages/$chatId';
//   }

//   static int _removePrefix(String id) {
//     return int.parse(id.replaceFirst(_kIdPrefix, ''));
//   }

//   static const _kIdPrefix = 'z';
//   static const _kSentAtKey = 'sentAt';
//   static const _kIdKey = 'id';
//   static const _kReadUsersIdsKey = 'readUsersIds';

//   @override
//   int get paginationRate => 300;

//   List<Message> _messagesFromSnap(DataSnapshot snap) {
//     final json = snap.value;
//     if (json == null) {
//       return [];
//     }
//     return (json as Map).entries.map<Message>((e) {
//       final message = e.value as Map;
//       final id = e.key;
//       message[_kIdKey] = id.toString();
//       message[_kSentAtKey] =
//           DateTime.fromMillisecondsSinceEpoch(message[_kSentAtKey], isUtc: true)
//               .toString();
//       if (message[_kReadUsersIdsKey] == null) {
//         message[_kReadUsersIdsKey] = [];
//       }
//       final json = Map<String, dynamic>.from(message);
//       return Message.fromJson(json);
//     }).toList()
//       ..sort((a, b) => b.sentAt.compareTo(a.sentAt));
//   }

//   @override
//   Future<List<Message>> fetchMessages(
//     String chatId, {
//     List<Message> fetchedMessages = const [],
//   }) async {
//     final packId = await _getLastPackId(chatId);
//     final chatRefPath = 'chats/messages/$chatId/packs/$packId/messages';
//     final chatRef = FirebaseDatabase.instance.ref(chatRefPath);
//     final snap = await chatRef.get();
//     final json = snap.value;
//     if (json == null) {
//       return [];
//     }
//     return _messagesFromSnap(snap);
//   }

//   @override
//   Future<Stream<List<Message>>> getMessagesStream(String chatId) async {
//     final packId = await _getLastPackId(chatId);
//     final chatRef = rtdb.ref(_messagesPath(chatId: chatId, packId: packId));
//     return chatRef.onValue.map((event) => _messagesFromSnap(event.snapshot));
//   }

//   @override
//   Future<void> sendMessage(String chatId, Message message) async {
//     final packId = await _getLastPackId(chatId);
//     final lastMessageId = await _getLastMessageId(chatId, packId);
//     if (_removePrefix(lastMessageId) >= paginationRate) {
//       return _startNewPack(chatId: chatId, message: message);
//     }
//     return _postMessage(
//       chatId: chatId,
//       packId: packId,
//       lastMessageId: lastMessageId,
//       message: message,
//     );
//   }

//   Future<void> _startNewPack({
//     required String chatId,
//     required Message message,
//   }) async {
//     final packCounterRef = rtdb.ref(_packCounterPath(chatId));
//     packCounterRef.set(ServerValue.increment(1));
//     return sendMessage(chatId, message);
//   }

//   Future<void> _postMessage({
//     required String chatId,
//     required String packId,
//     required String lastMessageId,
//     required Message message,
//   }) async {
//     final newId = _removePrefix(lastMessageId) + 1;
//     final packRef = rtdb.ref(_packPath(chatId, packId));
//     final messageJson = message.toJson();
//     messageJson[_kSentAtKey] = ServerValue.timestamp;
//     return packRef.update({
//       'messages/$_kIdPrefix$newId': messageJson,
//       'lastMessage': ServerValue.increment(1),
//     });
//   }

//   Future<String> _getLastPackId(String chatId) async {
//     final packRef = rtdb.ref(_packCounterPath(chatId));
//     final pack = await packRef.get();
//     return '$_kIdPrefix${pack.value ?? 0}';
//   }

//   Future<String> _getLastMessageId(String chatId, String packId) async {
//     final messageIdRef = rtdb.ref(_messagesCounterPath(
//       chatId: chatId,
//       packId: packId,
//     ));
//     final messageId = await messageIdRef.get();
//     return '$_kIdPrefix${messageId.value ?? 0}';
//   }

//   @override
//   Future<void> markAsRead(Message message) async {
//     // final event = ConversationMessageReadEvent(message);
//     // await _setMessage(message);
//     // await _postEvent(event);
//     // await _updateChat(chatId, newMessage);
//   }

//   @override
//   Stream<List<ConversationEvent>> getEventsStream(String chatId) {
//     // TODO: implement getEventsStream
//     throw UnimplementedError();
//   }
// }

