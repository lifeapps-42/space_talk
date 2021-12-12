import '../../user/models/user.dart';


class Message {
  final String id;
  final String text;
  final User author;
  final DateTime sentAt;
  final Set<String> readUsersIds;

  Message({
    required this.id,
    required this.text,
    required this.author,
    required this.sentAt,
    required this.readUsersIds,
  });
}
