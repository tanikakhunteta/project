import 'package:blood_camp/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({
    super.key,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController otpController = TextEditingController();

  _OtpVerificationScreenState();

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
              'OTP Verification',
              style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff303030)),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'We’ve send you the OTP. Please enter below the OTP received',
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff667685)),
            ),
            const SizedBox(
              height: 87,
            ),
            Center(
              child: Text(
                'Enter the OTP received',
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff303030)),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            PinCodeFields(
              controller: otpController,
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
              height: 30,
            ),
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: 54, width: MediaQuery.of(context).size.width),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 175, 15, 4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(69))),
                  child: Text(
                    'CONFIRM',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                'Resend OTP',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff667685)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
