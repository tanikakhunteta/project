import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/firestor.dart';
import 'package:gkmt_institute/home_screen.dart';
import 'package:gkmt_institute/notification_services.dart';

import 'package:gkmt_institute/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GKMT Institute',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
