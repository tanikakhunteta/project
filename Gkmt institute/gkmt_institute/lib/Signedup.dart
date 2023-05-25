import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/imagescreen.dart';
import 'package:gkmt_institute/sharedpref.dart';

class Signedup extends StatefulWidget {
  final Map<String, dynamic> userInfo;
  const Signedup({super.key, required this.userInfo});

  @override
  State<Signedup> createState() => _SignedupState();
}

class _SignedupState extends State<Signedup> {
  bool isVerified = false;
  late Timer _timer;
  int totalTime = 30;
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("users");

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        --totalTime;
        FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          collectionReference
              .doc(user!.uid)
              .set(widget.userInfo)
              .then((value) async {
            bool valueSet = await SharedPref.setToken(user.uid);
            if (valueSet) {
              _timer.cancel();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageScreen(),
                  ),
                  (route) => false);
            }
          });
        }

        if (totalTime == 0) {
          FirebaseAuth.instance.currentUser?.delete();
          _timer.cancel();
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
          isVerified ? 'Verified user $totalTime' : 'not verified $totalTime'),
    ));
  }
}
