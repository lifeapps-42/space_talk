import 'package:flutter/material.dart';

import '../chats/models/chat_item.dart';
import '../chats/view/screens/chats_screen.dart';
import '../conversations/view/screens/conversation_screen.dart';
import '../user/models/user.dart';

class MainRouter extends StatelessWidget {
  const MainRouter({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: ChatsScreen.route,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ChatsScreen.route:
            return MaterialPageRoute(
              builder: (context) => ChatsScreen(user: user),
            );
           case ConversationScreen.route:
            return MaterialPageRoute(
              builder: (context) => ConversationScreen(chatItem: settings.arguments as ChatItem,),
            );
        }
      },
    );
  }
}
