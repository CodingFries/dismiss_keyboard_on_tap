# dismiss_keyboard_on_tap

Dismisses Keyboard by tapping outside text field on the screen.

## Demo

<p align="center"><img src="https://github.com/CodingFries/dismiss_keyboard_on_tap/blob/master/gif/dissmiss_keyboard.gif?raw=true" style="height:400px;"/></p>

## Usage
Simply wrap MaterialApp with this widget and it will dismiss the keyboard whenever tapped outside the Text Field on any Screens.


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

You can also use it around separate widgets if you want more control.

That's all Enjoy.
