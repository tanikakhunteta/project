import 'package:blood_camp/create_account.dart';
import 'package:blood_camp/loginpage.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpLoginScreen extends StatefulWidget {
  const SignUpLoginScreen({super.key});

  @override
  State<SignUpLoginScreen> createState() => _SignUpLoginScreenState();
}

class _SignUpLoginScreenState extends State<SignUpLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGO',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 59,
                  color: const Color(0xffBF222B)),
            ),
            const SizedBox(
              height: 27,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: 54, width: MediaQuery.of(context).size.width),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateAccountScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      backgroundColor: const Color(0xffBF222B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                )),
            const SizedBox(
              height: 18,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: 54, width: MediaQuery.of(context).size.width),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(
                          30,
                        )),
                    shadowColor: Colors.black,
                  ),
                  child: Text(
                    ' LOGIN',
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF473D3D)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
