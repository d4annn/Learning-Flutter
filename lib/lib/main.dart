import 'package:back_to_instagram/pages/login_page.dart';
import 'package:back_to_instagram/theme/dark_mode.dart';
import 'package:back_to_instagram/theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: LoginPage(),
    );
  }
}
