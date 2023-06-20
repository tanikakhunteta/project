import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/sharedpref.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'Login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Razorpay _razorpay = Razorpay();
  var options = {
    'key': 'rzp_test_cp8qguIltCzVfs',
    'amount': 100,
    'name': 'Tanika Khunteta',
    'description': 'Fine T-Shirt',
    'prefill': {
      'contact': '+919529221066',
      'email': 'khandelwaltanu123@gmail.com'
    }
  };
  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);

    // TODO: implement initState
    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    log('error');
    // Do something when payment fails
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                  onTap: () {
                    SharedPref.clearToken();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                        (route) => false);
                  },
                  child: Icon(Icons.logout_outlined)),
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: ElevatedButton(
            onPressed: () {
              _razorpay.open(options);
            },
            child: Text("Pay Option")));
  }
}
