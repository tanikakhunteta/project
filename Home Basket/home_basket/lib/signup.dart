import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_basket/api_services.dart';
import 'package:home_basket/jploft_model.dart';
import 'package:home_basket/ui_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Sign In / Sign Up",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 75,
                    ),
                    Image.asset("assets/images/Group 2076.png"),
                    const SizedBox(
                      height: 36,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      elevation: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 5),
                            hintText: "Mobile Number",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 14, color: Color(0xff9B9B9B)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8)),
                            prefix: const CountryCodePicker(
                              onChanged: print,
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: 'IT',
                              favorite: ['+39', 'FR'],
                              // optional. Shows only country name and flag
                              showCountryOnly: false,
                              // optional. Shows only country name and flag when popup is closed.
                              showOnlyCountryWhenClosed: false,
                              // optional. aligns the flag and the Text left
                              alignLeft: false,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/verification_screen");
                        },
                        child: UiUtilsScreen.gradientContainer(context,
                            text: "Sign In/ Sign Up")),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "or",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Container(
                      height: 44,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff0453AE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 25,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Continue with Facebook",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 44,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google (1).png",
                            height: 25,
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          Text(
                            "Continue with Google",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    InkWell(
                      onTap: () async {
                        JpLoftModel? jpLoftModel =
                            await ApiService.jpLoftDetails();
                        print(jpLoftModel?.jpLoftData?.bookingId);
                      },
                      child: Text(
                        "Skip >>",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: const Color(0xff0680D6)),
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
}
