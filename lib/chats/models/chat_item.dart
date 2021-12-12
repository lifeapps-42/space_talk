import '../../messages/models/message.dart';
import '../../user/models/user.dart';
import 'private_chat.dart';

class ChatItem {
  final String id;
  final Message lastMessage;
  final Set<User> users;

  ChatItem({required this.id, required this.lastMessage, required this.users});

  static ChatItem? fromChatAndCompanions(Chat chat, List<User> companions) {
    final companionsResult = <User>{};
    for (final companionId in chat.users) {
      try {
        final companion =
            companions.firstWhere((element) => element.uid == companionId);
        companionsResult.add(companion);
      } on StateError catch (_) {
        return null;
      }
    }
    return ChatItem(
        id: chat.id, lastMessage: chat.lastMessage, users: companionsResult);
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
