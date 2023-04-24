import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/Signup.dart';
import 'package:gkmt_institute/otp.dart';

class Otp_Login_Screen extends StatefulWidget {
  const Otp_Login_Screen({super.key});

  @override
  State<Otp_Login_Screen> createState() => _Otp_Login_ScreenState();
}

class _Otp_Login_ScreenState extends State<Otp_Login_Screen> {
  String? verificationIddata;
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _key = GlobalKey<FormState>();

  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/images/LOGO-png.png"),
                  height: 150,
                ),
                Form(
                    key: _key,
                    child: TextFormField(
                      controller: mobileController,
                      onChanged: (v) {
                        setState(() {
                          print(v);
                        });
                      },
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration:
                          InputDecoration(hintText: "Enter Mobile Number"),
                    )),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
            child: ElevatedButton(
              onPressed: () async {
                print(mobileController.text.toString());

                QuerySnapshot data = await collectionReference.get();
                print(mobileController.text);

                try {
                  print(mobileController.text);
                  if (data.docs
                      .firstWhere((element) =>
                          element['mobile_no.'] == mobileController.text)
                      .exists) {
                    _auth.verifyPhoneNumber(
                      phoneNumber: "+91${mobileController.text}",
                      verificationCompleted: (phoneAuthCredential) {},
                      verificationFailed: (error) {},
                      codeSent: (verificationId, forceResendingToken) {
                        setState(() {
                          verificationIddata = verificationId;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(),
                              ));
                        });
                        log(verificationId);
                      },
                      codeAutoRetrievalTimeout: (verificationId) {},
                    );
                  }
                } catch (e, s) {
                  print(s.toString());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      ));
                }
              },
              child: Text(
                "Send OTP",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )),
      ),
    );
  }
}
