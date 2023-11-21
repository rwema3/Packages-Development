library flutter_local_notifications;

import 'dart:async';

class FlutterLocalNotifications {
  static const MethodChannel _channel =
      const MethodChannel('flutter_local_notifications');

  static Future<void> showNotification(String title, String body) async {
