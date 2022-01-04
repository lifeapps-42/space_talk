import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth/view/widgets/auth_consumer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseDatabase.instance.databaseURL =
      'https://space-talk-im-default-rtdb.europe-west1.firebasedatabase.app/';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color.fromARGB(0xFF, 59, 29, 27),
          fontFamily: 'LibreFranklin',
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.white70,
            selectionColor: Colors.white54,
            selectionHandleColor: Colors.white,
          ),
          cupertinoOverrideTheme:
              const NoDefaultCupertinoThemeData(primaryColor: Colors.white70),
        ),
        home: const AuthConsumer(),
      ),
    );
  }
}
