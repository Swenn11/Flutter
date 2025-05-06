import 'package:flutter/material.dart';
import 'package:my_app/screen/login/login_screen.dart';
import 'package:my_app/screen/tournament/tourTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
