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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 260.0,
                height: 260.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/K_Logo-pink.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Log in with your email',
                style: TextStyle(
                  fontSize: 19.0,
                ),
              ),
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
                  text: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  width: double.infinity,
                  height: 55.0,
                  backgroundColor: Color.fromRGBO(221, 145, 173, 1),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text('Or'),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 130.0),
                child: PrimaryButton(
                  text: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  width: double.infinity,
                  height: 55.0,
                  backgroundColor: Color.fromRGBO(224, 191, 204, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
