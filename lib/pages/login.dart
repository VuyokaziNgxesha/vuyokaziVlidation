import 'package:flutter/material.dart';

import '../contants.dart';
import '../utilities/primary_button.dart';

class Login extends StatefulWidget {
  static String id = "Login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/K_Logo-pink.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text('Login with your email'),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: inputText.copyWith(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: inputText.copyWith(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: PrimaryButton(
              text: Text('Login'),
              width: double.infinity,
              height: 55.0,
            ),
          ),
          SizedBox(height: 20.0),
          Text('Or'),
          SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 130.0),
            child: PrimaryButton(
              text: Text('Sign Up'),
              width: double.infinity,
              height: 55.0,
            ),
          ),
        ],
      ),
    );
  }
}
