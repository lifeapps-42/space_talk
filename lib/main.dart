import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth/view/widgets/auth_consumer.dart';
import 'utils/sound_effects/sound_effects.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SoundEffects.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: const [
        // Logger(),
      ],
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

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "oldValue": "$previousValue"
  "newValue": "$newValue"
}''');
  }
}
