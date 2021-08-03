#import "DismissKeyboardOnTapPlugin.h"
#if __has_include(<dismiss_keyboard_on_tap/dismiss_keyboard_on_tap-Swift.h>)
#import <dismiss_keyboard_on_tap/dismiss_keyboard_on_tap-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dismiss_keyboard_on_tap-Swift.h"
#endif

@implementation DismissKeyboardOnTapPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDismissKeyboardOnTapPlugin registerWithRegistrar:registrar];
}
@end
