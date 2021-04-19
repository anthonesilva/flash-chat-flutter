import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

import 'package:firebase_core/firebase_core.dart';

import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp()
        .whenComplete(() => print('Firebase started!!!'));
  } catch (e) {
    print(e);
  }
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.pageId,
      routes: {
        WelcomeScreen.pageId: (context) => WelcomeScreen(),
        LoginScreen.pageId: (context) => LoginScreen(),
        RegistrationScreen.pageId: (context) => RegistrationScreen(),
        ChatScreen.pageId: (context) => ChatScreen(),
      },
    );
  }
}
