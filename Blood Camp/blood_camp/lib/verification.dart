import 'package:blood_camp/create_account.dart';

import 'package:blood_camp/loginpage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Color(0xff303030),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              'Verification',
              style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff303030)),
            ),
            const SizedBox(
              height: 56,
            ),
            Text(
              'Enter Verification Code',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff303030)),
            ),
            const SizedBox(
              height: 32,
            ),
            PinCodeFields(
              fieldHeight: 48,
              fieldWidth: 40,
              keyboardType: TextInputType.number,
              activeBackgroundColor: const Color(0xffC2B8B8),
              fieldBackgroundColor: const Color(0xffC2B8B8),
              length: 6,
              onComplete: (String value) {
                setState(() {});
              },
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "If you didn't receive a code!",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF667685)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ));
                    },
                    child: Text(
                      "RESEND",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFF0202)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Create New Password',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff303030)),
            ),
            const SizedBox(
              height: 32,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.roboto(
                        color: const Color(0xFF303030),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF667685)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF667685)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Enter New Password",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.roboto(
                        color: const Color(0xFF303030),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF667685)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF667685)),
                        borderRadius: BorderRadius.circular(41)),
                    hintText: "Confirm Password",
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 24,
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ConstrainedBox(
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
                backgroundColor: const Color.fromARGB(255, 175, 15, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
            child: Text(
              'SUBMIT',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
