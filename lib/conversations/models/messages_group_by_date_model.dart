import '../../messages/models/message.dart';
import '../../utils/date_time_extensions/date_time_extensions.dart';

class GroupedMessages {
  final List<Message> messages;
  final DateTime date;

  GroupedMessages({required this.messages, required this.date});

  static List<GroupedMessages> group(List<Message> messages) {
    final list = <GroupedMessages>[];
    for (final m in messages) {
      final i = list.indexWhere((element) => element.date.isSameDay(m.sentAt));
      if (i < 0) {
        final group = GroupedMessages(
          messages: [m],
          date: DateTime(m.sentAt.year, m.sentAt.month, m.sentAt.day),
        );
        list.add(group);
      } else {
        list[i].messages.add(m);
      }
    }
    return list;
  }
}

extension GroupedMessagesExtension on List<GroupedMessages> {

  int findGroupIndexByDate(DateTime date) {
    return indexWhere((group) => group.date.isSameDay(date));
  }
  
  void addMessage(Message message) {
    final i = findGroupIndexByDate(message.sentAt);
    if (i < 0) {
      final newDate = DateTime(
        message.sentAt.year,
        message.sentAt.month,
        message.sentAt.day,
      );
      final newGroup = GroupedMessages(
        date: newDate,
        messages: [message],
      );
      insert(0, newGroup);
    } else {
      this[i].messages.insert(0, message);
    }
  }

  void replaceMessage(Message message) {
    final group = firstWhere((group) => group.date.isSameDay(message.sentAt));
    final i = group.messages.indexWhere((m) => m.id == message.id);
    group.messages[i] = message;
  }

  void removeMessage(Message message) {
   final i = findGroupIndexByDate(message.sentAt);
   this[i].messages.remove(message);
  }
}
