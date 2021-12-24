import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../conversations/view/screens/conversation_screen.dart';
import '../user/models/user.dart';
import '../user/providers/user_provider.dart';
import '../widgets/lifecycle_handler.dart';

class MainRouter extends ConsumerWidget {
  const MainRouter({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    void goOnline() {
      ref.read(userStateNotifierProvider.notifier).goOnline();
    }

    void goOffline() {
      ref.read(userStateNotifierProvider.notifier).goOffline();
    }

    FirebaseMessaging.instance.requestPermission();

    return LifecycleHandler(
     onStateChanged: (state) {
        if (state == AppLifecycleState.inactive) {
           goOffline();
        }
        if (state == AppLifecycleState.resumed) {
          goOnline();
        }
      },
      child: Navigator(
        initialRoute: ConversationScreen.route,
        onGenerateRoute: (settings) {
          switch (settings.name) {
             case ConversationScreen.route:
              return MaterialPageRoute(
                builder: (context) => ConversationScreen(user: user,),
              );
          }
        },
      ),
    );
  }
}
