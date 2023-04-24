import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/homescreen.dart';

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
        setState(() {
          --totalTime;
          FirebaseAuth.instance.currentUser?.reload();
          final user = FirebaseAuth.instance.currentUser;
          if (user?.emailVerified ?? false) {
            collectionReference.add(widget.userInfo).then((value) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                  (route) => false);
              _timer.cancel();
            });
          }
        });
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
