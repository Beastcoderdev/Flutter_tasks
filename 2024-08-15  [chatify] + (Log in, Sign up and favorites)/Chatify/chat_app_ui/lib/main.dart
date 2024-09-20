import 'package:chat_app_ui/features/auth/splash_view.dart';
import 'package:chat_app_ui/features/auth/view/login_view.dart';
import 'package:chat_app_ui/features/auth/view/signup_view%20.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SplashView(),
        ),
      ),
    );
  }
}
