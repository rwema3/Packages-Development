import Flutter
import UIKit

public class SwiftFlutterLocalNotificationsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_local_notifications", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterLocalNotificationsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "showNotification" {
      if let args = call.arguments as? [String: Any],
         let title = args["title"] as? String,
         let body = args["body"] as? String {
        // Implement your native code to show a local notification on iOS
        // ...
        result(nil)
      } else {
