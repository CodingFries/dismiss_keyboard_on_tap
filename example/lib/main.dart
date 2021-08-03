import 'package:dismiss_keyboard_on_tap/dismiss_keyboard_on_tap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboardOnTap(
      child: MaterialApp(
        home: Scaffold(),
      ),
    );
  }
}
