import Flutter
import UIKit

public class SwiftDismissKeyboardOnTapPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "dismiss_keyboard_on_tap", binaryMessenger: registrar.messenger())
    let instance = SwiftDismissKeyboardOnTapPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
