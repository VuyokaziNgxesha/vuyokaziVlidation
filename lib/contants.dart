import 'package:flutter/material.dart';

final inputText = InputDecoration(
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  labelStyle: TextStyle(
    color: Colors.grey,
  ),
  labelText: 'input text',
  hintText: 'placeholder for input',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
  ),
);