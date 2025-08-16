import 'package:dismiss_keyboard_on_tap/dismiss_keyboard_on_tap.dart';
import 'package:flutter/material.dart';

/// Entry point for the DismissKeyboardOnTap example application.
///
/// This example demonstrates how to use the DismissKeyboardOnTap widget
/// to automatically dismiss the keyboard when users tap outside of text fields.
void main() {
  runApp(const MyApp());
}

/// Example application demonstrating the DismissKeyboardOnTap widget.
///
/// This app shows a simple screen with a text field wrapped in a
/// DismissKeyboardOnTap widget. Users can:
/// 1. Tap on the text field to focus it and bring up the keyboard
/// 2. Tap anywhere else on the screen to dismiss the keyboard
///
/// This provides an intuitive user experience for keyboard management.
class MyApp extends StatelessWidget {
  /// Creates the example application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the entire app in DismissKeyboardOnTap to enable keyboard dismissal
    // anywhere in the app when users tap outside of input fields
    return DismissKeyboardOnTap(
      child: MaterialApp(
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dismiss Keyboard Example'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                // This TextField will automatically dismiss its keyboard
                // when users tap anywhere outside of it
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
