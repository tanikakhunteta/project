import 'package:blood_camp/all_sreen.dart';
import 'package:blood_camp/config/shared_pref.dart';
import 'package:blood_camp/home.dart';
import 'package:blood_camp/signuplogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SharedPref.getToken().then((sharedPref) {
      Future.delayed(Duration(seconds: 2), () {
        if (sharedPref.isNotEmpty) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AllScreen(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpLoginScreen(),
              ));
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "LOGO",
          style: GoogleFonts.roboto(
              fontSize: 60,
              fontWeight: FontWeight.w500,
              color: Color(0xffBF222B)),
        ),
      ),
    );
  }
}
