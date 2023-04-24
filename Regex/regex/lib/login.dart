import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String? verficationIDData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(color: Colors.black))),
          ),
          ElevatedButton(
              onPressed: () async {
                await auth.verifyPhoneNumber(
                  phoneNumber: '+91 ${phoneNumberController.text}',
                  verificationFailed: (FirebaseAuthException e) {
                    log('The provided phone number is not valid.');

                    if (e.code == 'invalid-phone-number') {
                      log('The provided phone number is not valid.');
                    }

                    // Handle other errors
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                  codeSent:
                      (String verificationId, int? forceResendingToken) async {
                    setState(() {
                      verficationIDData = verificationId;
                    });
                    // PhoneAuthCredential credential =
                    //     PhoneAuthProvider.credential(
                    //         verificationId: verificationId,
                    //         smsCode: otpController.text);

                    // // Sign the user in (or link) with the credential
                    // await auth.signInWithCredential(credential);
                  },
                  verificationCompleted:
                      (PhoneAuthCredential phoneAuthCredential) {
                    log(phoneAuthCredential.providerId);
                  },
                );
              },
              child: Text("Send OTP")),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
                controller: otpController,
                decoration: InputDecoration(
                    hintText: "Send otp",
                    hintStyle: TextStyle(color: Colors.black))),
          ),
          ElevatedButton(
              onPressed: () async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: verficationIDData!,
                    smsCode: otpController.text);
                log(verficationIDData.toString());
                log(otpController.text.toString());
                auth.signInWithCredential(credential).then((value) {
                  log(value.credential!.providerId);
                });
                // log((auth.currentUser?.isAnonymous ?? ''));
              },
              child: Text("Sign In"))
        ],
      ),
    );
  }
}
