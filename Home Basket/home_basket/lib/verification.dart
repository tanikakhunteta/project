import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_basket/api_services.dart';
import 'package:home_basket/ui_utils.dart';

class VerificationScreenArgumnet {
  final String mobileno;

  VerificationScreenArgumnet(
    this.mobileno,
  );
}

class VerificationScreen extends StatefulWidget {
  final VerificationScreenArgumnet verificationScreenArgumnet;

  const VerificationScreen({
    super.key,
    required this.verificationScreenArgumnet,
  });

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String otp = '';
  @override
  Widget build(BuildContext context) {
    log(widget.verificationScreenArgumnet.mobileno);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verify",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    Image.asset("assets/images/Group 2076.png"),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      "Verification Code",
                      style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000)),
                    ),
                    Text(
                      "Please Enter the Verification Code",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xff000000)),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    OtpTextField(
                      focusedBorderColor: Color(0xffB5B5B5),
                      borderRadius: BorderRadius.circular(8),
                      numberOfFields: 6,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in

                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        setState(() {
                          otp = verificationCode;
                        });
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          ApiService.verifyOtpDetails(
                                  widget.verificationScreenArgumnet.mobileno,
                                  otp)
                              .then((value) {
                            if (value != null && value["result"] == "Success") {
                              Navigator.pushNamed(
                                context,
                                "/address_screen",
                              );
                            }
                          });
                        },
                        child: UiUtilsScreen.gradientContainer(context,
                            text: "Verify")),
                    const SizedBox(
                      height: 11,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return resendOtp(context);
                          },
                        );
                      },
                      child: Text(
                        "Resend OTP",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: const Color(0xff0680D6)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
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

  static Widget resendOtp(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(
        "Resend OTP",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff0680D6)),
      ),
      content: Text(
        "Your New One Time PIN (OTP)\nwill be SMS to you.",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
      ),
      actions: [
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0680D6)),
            ),
          ),
        )
      ],
    );
  }
}
