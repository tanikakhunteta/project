import 'package:blood_camp/all_sreen.dart';
import 'package:blood_camp/shared_pref.dart';
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
    SharedPref.getToken().then((value) {
      Future.delayed(const Duration(seconds: 3), () {
        if (value.isNotEmpty) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const AllScreen(),
              ));
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpLoginScreen(),
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
              color: const Color(0xffBF222B)),
        ),
      ),
    );
  }
}
