import 'package:flutter/material.dart';
import 'package:kelly_girl_skills/pages/login.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'log in.jpg',
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
