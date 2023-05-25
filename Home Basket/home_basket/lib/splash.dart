import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_basket/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.pushReplacementNamed(context, "/signup_screen");
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      stops: [0.5, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffFFFFFF), Color(0xffADFFBF)])),
              child:
                  Center(child: Image.asset("assets/images/Group 3459.png"))),
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/images/Mask Group 5.png")),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset("assets/images/Mask Group 6.png")),
        ],
      ),
    );
  }
}
