import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import 'private_chat.dart';

class ChatItem {
  final String id;
  final Message lastMessage;
  final Set<User> users;
  final int messagesCount;
  final Map<String, int> readByUsers;

  User get companion => users.first;

  ChatItem({
    required this.id,
    required this.lastMessage,
    required this.users,
    required this.messagesCount,
    required this.readByUsers,
  });

  static ChatItem? fromChatAndCompanions(Chat chat, List<User> companions) {
    final companionsResult = <User>{};
    for (final companionId in chat.users.toList()) {
      try {
        final companion =
            companions.firstWhere((element) => element.uid == companionId);
        companionsResult.add(companion);
      } on StateError catch (_) {
        //ignore
      }
    }
    if (companionsResult.isEmpty) return null;

    return ChatItem(
      id: chat.id!,
      lastMessage: chat.lastMessage,
      users: companionsResult,
      messagesCount: chat.messagesCount ?? 0,
      readByUsers: chat.readBy ?? {},
    );
  }

  static List<ChatItem> itemsListFromChatsAndCompanions(
      List<Chat> chats, List<User> companions) {
    final result = <ChatItem>[];
    for (final chat in chats) {
      final chatItem = ChatItem.fromChatAndCompanions(chat, companions);
      if (chatItem != null) {
        result.add(chatItem);
      }
    }
    return result;
  }
}
