import 'package:flutter/material.dart';
import 'package:kelly_girl_skills/pages/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Login.id,
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255 ,255, 236, 240),
    ),
    routes: {
      Login.id: (context) => const Login(),
    }
  ));
}


