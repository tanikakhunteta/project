import 'package:blood_camp/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF303030)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "Create New Password",
                style: GoogleFonts.roboto(
                    fontSize: 34, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 56,
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
                height: 164,
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
                                builder: (context) => const LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(69)),
                          backgroundColor: const Color(0xFFBF222B)),
                      child: Text(
                        "VERIFY",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
