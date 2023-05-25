import 'package:flutter/material.dart';
import 'package:regex/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationService notificationService = NotificationService();
  @override
  void initState() {
    notificationService.requestNotificationPermission();
    notificationService.getDeviceToken().then((value) {
      print("$value token");
    });
    notificationService.isTokenRefresh();
    notificationService.firebaseInit();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
