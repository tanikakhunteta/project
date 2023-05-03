import 'package:blood_camp/loginpage.dart';
import 'package:blood_camp/otp_verification.dart';

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool otpsent = false;
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Color(0xff303030)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Create your account',
                style: GoogleFonts.roboto(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff303030)),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Enter your mobile number to get started',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff667685)),
              ),
              const SizedBox(
                height: 56,
              ),
              Center(
                child: Container(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(41)),
                  child: Row(
                    children: [
                      const CountryCodePicker(
                        initialSelection: 'IN',
                        favorite: ['+91', 'IN'],
                        // countryFilter: ['IN', 'IN'],
                      ),
                      SizedBox(
                        width: 220,
                        child: TextFormField(
                          maxLength: 10,
                          controller: mobileController,
                          onChanged: (value) {
                            setState(() {});
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Mobile number',
                              labelStyle: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff303030))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 132,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 54, width: MediaQuery.of(context).size.width),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpVerificationScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(69)),
                      backgroundColor: const Color.fromARGB(255, 204, 18, 4),
                    ),
                    child: Text(
                      'SEND OTP',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff667685)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        'LOGIN',
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffFF0202)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Text(
          'By creating an account, I agree to the\nTerms & Conditions and Privacy Policy',
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
