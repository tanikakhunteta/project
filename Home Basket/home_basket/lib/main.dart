import 'package:flutter/material.dart';
import 'package:home_basket/address.dart';
import 'package:home_basket/routes.dart';
import 'package:home_basket/signup.dart';
import 'package:home_basket/splash.dart';
import 'package:home_basket/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash_screen",
      onGenerateRoute: Routes.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
