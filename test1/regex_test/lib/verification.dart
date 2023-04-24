import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/language.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/background@2x.png"))),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xff111111),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Verification",
              style: GoogleFonts.hind(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff111111)),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/5243319-ai@2x.png",
                        height: 244,
                      ),
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text:
                            "OTP has been sent on your registered\nPhone Number ",
                        style: GoogleFonts.cabin(
                            fontSize: 18, color: const Color(0xff636363)),
                      ),
                      TextSpan(
                        text: "xxxxxxxx89",
                        style: GoogleFonts.cabin(
                            fontSize: 18, color: const Color(0xff59B8BE)),
                      )
                    ])),
                    const SizedBox(
                      height: 21,
                    ),
                    OtpTextField(
                      focusedBorderColor: const Color(0xFF59B8BE),
                      fieldWidth: 75,
                      numberOfFields: 4,
                      borderColor: const Color(0xFF59B8BE),
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Didn't Receive Code?",
                            style: GoogleFonts.cabin(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: const Color(0xff636363)),
                          ),
                          TextSpan(
                            text: " Resend Now",
                            style: GoogleFonts.cabin(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: const Color(0xff59B8BE)),
                          )
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          height: 50, width: MediaQuery.of(context).size.width),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color(0xff59B8BE)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LanguageScreen(),
                                ));
                          },
                          child: Text(
                            "Continue",
                            style: GoogleFonts.hind(fontSize: 17),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
