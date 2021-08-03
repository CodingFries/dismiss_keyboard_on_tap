# dismiss_keyboard_on_tap

Dismisses Keyboard by tapping outside text field on the screen.

## Usage
Simply wrap MaterialApp with this widget and it will dismiss the keyboard whenever tapped outside the Text Field on all Screens.


```dart
import 'package:dismiss_keyboard_on_tap/dismiss_keyboard_on_tap.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DismissKeyboardOnTap(
      child: MaterialApp(
        home: ...,
      ),
    );
  }
}
```

That's all Enjoy.
