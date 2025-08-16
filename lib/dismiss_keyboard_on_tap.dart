import 'package:flutter/material.dart';

/// A widget that dismisses the keyboard when the user taps outside of any focused input field.
///
/// This widget wraps its child in a [GestureDetector] that listens for tap events.
/// When a tap occurs and there's a focused text field (like [TextField] or [TextFormField]),
/// it automatically unfocuses the field, causing the keyboard to dismiss.
///
/// This is particularly useful for improving user experience in forms or screens
/// with text inputs, as it provides an intuitive way to close the keyboard by
/// tapping anywhere on the screen.
///
/// Example usage:
/// ```dart
/// DismissKeyboardOnTap(
///   child: Scaffold(
///     body: Column(
///       children: [
///         TextField(
///           decoration: InputDecoration(hintText: 'Enter text'),
///         ),
///         // ... other widgets
///       ],
///     ),
///   ),
/// )
/// ```
class DismissKeyboardOnTap extends StatelessWidget {
  /// Creates a [DismissKeyboardOnTap] widget.
  ///
  /// The [child] parameter is required and represents the widget tree
  /// that will be wrapped with keyboard dismissal functionality.
  const DismissKeyboardOnTap({super.key, required this.child});

  /// The widget to wrap with keyboard dismissal functionality.
  ///
  /// This child widget will receive tap gesture detection, and any taps
  /// outside of focused input fields will trigger keyboard dismissal.
  final Widget child;

  /// Builds the widget tree with keyboard dismissal functionality.
  ///
  /// Returns a [GestureDetector] that wraps the [child] widget and listens
  /// for tap events to automatically dismiss the keyboard when appropriate.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get the current focus scope to check if any input field is focused
        FocusScopeNode currentFocus = FocusScope.of(context);

        // Only dismiss keyboard if:
        // 1. The current focus scope doesn't have primary focus (meaning a child has focus)
        // 2. There is actually a focused child widget (like a TextField)
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          // Unfocus the currently focused input field, which dismisses the keyboard
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: child,
    );
  }
}
