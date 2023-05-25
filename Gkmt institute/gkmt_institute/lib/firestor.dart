import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:gkmt_institute/sharedpref.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

class HomePAgePeAaGAye extends StatefulWidget {
  const HomePAgePeAaGAye({super.key});

  @override
  State<HomePAgePeAaGAye> createState() => _HomePAgePeAaGAyeState();
}

class _HomePAgePeAaGAyeState extends State<HomePAgePeAaGAye> {
  CollectionReference users = FirebaseFirestore.instance.collection('register');
  List<QueryDocumentSnapshot<Object?>> docs = [];
  GoogleSignIn _googleSignIn = GoogleSignIn();

  List<XFile> images = [];

  // @override
  // void initState() {
  //   SharedPref.getToken().then((value) {
  //     log(value);
  //   });

  //   users.get().then((value) {
  //     setState(() {
  //       docs = value.docs;
  //     });
  //     log(value.docs.length.toString());
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (images.isNotEmpty)
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.file(File(images[index].path)),
                  );
                },
              ),
            ),
          // InkWell(
          //   onTap: () async {
          //     await _googleSignIn.signOut();
          //     Navigator.push(context, MaterialPageRoute(
          //       builder: (context) {
          //         return SplashScreen();
          //       },
          //     ));
          //   },
          //   child: Container(
          //     height: 50,
          //     width: 300,
          //     decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Colors.blue,
          //         ),
          //         borderRadius: BorderRadius.circular(10)),
          //     child:
          //         Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //       Image.asset(
          //         'assets/google_icon.png',
          //         height: 30,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           'Signout ',
          //           style: TextStyle(fontWeight: FontWeight.bold),
          //         ),
          //       )
          //     ]),
          //   ),
          // ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              ImagePicker.platform.getMultiImage().then((value) {
                if (value != null) {
                  images.addAll(value);
                  setState(() {});
                }
              });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/google (1).png',
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Image picker ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              // CollectionReference users =
              //     FirebaseFirestore.instance.collection('users');

              // // try {
              // //   await users.doc('12345').get();

              // // } catch (e) {
              // //   log(e.toString());
              // //   await users.doc('12345').set({
              // //     'mobile': '8562897238',
              // //     'uId': '12345',
              // //     'name': 'Testuser',
              // //     'dob': '22:9:00'
              // //   });
              // // }
              // // return;
              // List<String> downloadUrl = [];
              // images.forEach((element) async {
              //   CollectionReference users =
              //       FirebaseFirestore.instance.collection('users');
              //   QuerySnapshot<Object?> userArray = await users.get();

              //   Reference reference = FirebaseStorage.instance
              //       .ref()
              //       .child('userImages')
              //       .child(DateTime.now().toString());
              //   UploadTask uploadTask = reference.putFile(File(element.path));
              //   await uploadTask.whenComplete(() async {
              //     reference.getDownloadURL().then((value) async {
              //       downloadUrl.add(value);
              //       users.doc('12345').update({'images': downloadUrl});
              //       print('${value} uploaded');
              //     });
              //   });
              // });
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/facebook (1).png',
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Image upload ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
