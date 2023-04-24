import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/verification.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  bool? ischecked = false;
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
              child: Icon(
                Icons.arrow_back,
                color: Color(0xff111111),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Login Now",
              style: GoogleFonts.hind(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111111)),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/Group 1074@2x.png",
                      height: 248,
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Please enter your phone number",
                    style: GoogleFonts.hind(
                        fontSize: 17, color: Color(0xff636363)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Material(
                    shadowColor: Color.fromARGB(255, 236, 236, 236),
                    child: TextFormField(
                      controller: phoneController,
                      maxLength: 10,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Phone number",
                          hintStyle: GoogleFonts.hind(
                              fontSize: 16, color: Color(0xffA4A4A4))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xff59B8BE)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2))),
                          value: ischecked,
                          activeColor: Color(0xff59B8BE),
                          tristate: false,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value;
                            });
                          }),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the",
                            style: GoogleFonts.hind(
                                color: Color(0xff636363),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: " Terms and Condition",
                            style: GoogleFonts.hind(
                                decoration: TextDecoration.underline,
                                color: Color(0xff59B8BE),
                                fontSize: 18,
                                fontWeight: FontWeight.w500))
                      ])),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        height: 50, width: MediaQuery.of(context).size.width),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color(0xff59B8BE)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerificationScreen(),
                              ));
                        },
                        child: Text(
                          "Continue",
                          style: GoogleFonts.hind(fontSize: 17),
                        )),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                      child: Text(
                    "OR",
                    style: GoogleFonts.hind(
                        fontSize: 16, color: Color(0xff59B8BE)),
                  )),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Image.asset(
                            "assets/google (1).png",
                            height: 21,
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff1B74E4)),
                          child: Center(
                            child: Image.asset(
                              "assets/Icon awesome-facebook-f@2x.png",
                              height: 21,
                            ),
                          )),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: Icon(
                            Icons.apple,
                            color: Colors.white,
                            size: 28,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Center(
                    child: Text(
                      "I am an astrologer",
                      style: GoogleFonts.hind(
                          fontSize: 19, color: Color(0xff59B8BE)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
