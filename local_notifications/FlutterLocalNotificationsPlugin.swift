import Flutter
import UIKit

public class SwiftFlutterLocalNotificationsPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_local_notifications", binaryMessenger: registrar.messenger())
