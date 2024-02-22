import 'package:flutter/material.dart';

class DismissKeyboardOnTap extends StatelessWidget {
  /// The widget to wrap around.
  final Widget child;

  /// Wrap this around a widget and this would dismiss keyboard when tapped anywhere on the screen outside the text field.
  DismissKeyboardOnTap({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: child,
    );
  }
}
