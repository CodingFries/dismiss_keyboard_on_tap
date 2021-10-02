import 'package:flutter/cupertino.dart';

class DismissKeyboardOnTap extends StatelessWidget {
  /// Wrap this around a widget and this would dismiss keyboard when tapped anywhere on the screen outside the text field.

  final Widget child;
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
