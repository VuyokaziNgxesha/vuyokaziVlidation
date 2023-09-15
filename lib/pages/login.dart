import 'package:flutter/material.dart';
import 'package:kelly_girl_skills/contants.dart';
import '../utilities/primary_button.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                if (value == null ||
                    RegExp(r'^[\w.\-]+\@[\w\-]+(\.\w+)+$').hasMatch(value)) {}
                return 'Please enter valid email ';
              }),
              TextFormField(
                  //  validator gets the text that the user has entered.
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter password";
                }
                //  password validation
                if (value.length < 8) {
                  return "Password must be at least 8 characters long";
                }
                return null;
              }),
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
