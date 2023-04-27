import 'package:blood_camp/all_sreen.dart';
import 'package:blood_camp/create_account.dart';
import 'package:blood_camp/forgot_password.dart';
import 'package:blood_camp/model/login_response_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/shared_pref.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isvisible = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Color(0xFF303030))),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                "Login to your account",
                style: GoogleFonts.roboto(
                    fontSize: 34, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 56,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: phoneController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.roboto(
                          color: Color(0xFF303030),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      hintText: "Enter Mobile Number",
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: passwordController,
                    onChanged: (v) {
                      setState(() {});
                    },
                    obscureText: !isvisible,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        },
                        child: !isvisible
                            ? Icon(
                                Icons.visibility_outlined,
                                color: Color(0xFF323232),
                              )
                            : Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xFF323232),
                              ),
                      ),
                      hintStyle: GoogleFonts.roboto(
                          color: Color(0xFF303030),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF667685)),
                          borderRadius: BorderRadius.circular(41)),
                      hintText: "Enter Password",
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPassword(),
                        ));
                  },
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFF0202)),
                  ),
                ),
              ),
              SizedBox(
                height: 54,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 54, width: MediaQuery.of(context).size.width),
                  child: ElevatedButton(
                      onPressed: () async {
                        LoginAPIResponseModel? loginAPIResponseModel =
                            await ApiService.login(
                                phoneController.text, passwordController.text);

                        if (loginAPIResponseModel?.success ?? false) {
                          bool valueSet = await SharedPref.setToken(
                              loginAPIResponseModel!.data!.token!);
                          if (valueSet) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllScreen()));
                          } else {}
                        } else {}
                      },
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69)),
                          backgroundColor: Color(0xFFBF222B))),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have account",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF667685)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccountScreen(),
                            ));
                      },
                      child: Text(
                        "SIGNIN",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFF0202)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
