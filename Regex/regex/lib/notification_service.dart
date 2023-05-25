import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  AndroidNotificationChannel channel = AndroidNotificationChannel(
      "high_importance_channel", "High Importance Notification",
      description: "This channel is used for important notification",
      importance: Importance.max);

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("user accessed permission");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("user accessed provisional permission");
    } else {
      print("user denied permission");
    }
  }

  void firebaseInit() {
    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {});
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() {
    messaging.onTokenRefresh.listen((event) {
      event.toString();
      print("refresh");
    });
  }
}
