import 'dart:async';

import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/Login.dart';
import 'package:gkmt_institute/carousal.dart';
import 'package:gkmt_institute/imagescreen.dart';
import 'package:gkmt_institute/sharedpref.dart';

import 'home_screen.dart';
import 'homescreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    SharedPref.getToken().then((value) {
      Future.delayed(
        Duration(seconds: 4),
        () {
          if (value.isNotEmpty) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CarousalScreen(),
                ));
          }
        },
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1d3856),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/logo.png",
              height: 100,
            ),
          )
        ]));
  }
}
