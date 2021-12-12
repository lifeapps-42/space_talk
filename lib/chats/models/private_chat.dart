import '../../messages/models/message.dart';
import '../../user/models/user.dart';

class Chat {
  final String id;
  final List<Message> messages;
  final User participiant;
  // final DateTime lastSeen;
  

  Chat({
    required this.id,
    required this.messages,
    required this.participiant,
  });
}
