import 'dart:async';

import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/carousal.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
 

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      backgroundColor: Color(0xff1d3856),
      childWidget: SizedBox(
        height: 120,
        child: Image.asset("assets/images/logo.png"),
      ),
      duration: const Duration(milliseconds: 2000),
      animationDuration: const Duration(milliseconds: 1000),
      defaultNextScreen: CarousalScreen(),
    );
    // Scaffold(
    //     backgroundColor: Color(0xff1d3856),
    //     body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //       Align(
    //         alignment: Alignment.center,
    //         child: Image.asset(
    //           "assets/images/logo.png",
    //           height: 100,
    //         ),
    //       )
    //     ]));
  }
}
