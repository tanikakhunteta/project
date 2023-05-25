import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:gkmt_institute/homescreen.dart';
import 'package:gkmt_institute/sharedpref.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Text(
                ">>",
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Image.asset(
              "assets/images/LOGO-png.png",
              height: 150,
            )),
            Text(
              "Pick a profile Picture",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Have a favourite selfie? Upload it now.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 107, 107, 107)),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Stack(
                children: [
                  Center(
                      child: file != null
                          ? Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FileImage(File(file!.path))),
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 255, 162, 162)),
                            )
                          : Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/LOGO-png.png")),
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 255, 162, 162)),
                            )),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      ImagePicker()
                                          .pickImage(source: ImageSource.camera)
                                          .then((value) {
                                        setState(() {
                                          file = value;
                                        });
                                      });
                                    },
                                    child: Icon(
                                      Icons.camera,
                                      size: 50,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      ImagePicker()
                                          .pickImage(
                                              source: ImageSource.gallery)
                                          .then((value) {
                                        setState(() {
                                          file = value;
                                        });
                                      });
                                    },
                                    child: Icon(
                                      Icons.browse_gallery,
                                      size: 50,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blueAccent),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () async {
                Reference reference = FirebaseStorage.instance
                    .ref()
                    .child("userImages")
                    .child(DateTime.now().toString());
                UploadTask uploadTask = reference.putFile(File(file!.path));
                await uploadTask.whenComplete(() async {
                  String userId = await SharedPref.getToken();
                  String downloadUrl = await reference.getDownloadURL();
                  FirebaseFirestore.instance
                      .collection("users")
                      .doc(userId)
                      .update({'userImage': downloadUrl});
                  log(downloadUrl);
                });
              },
              child: Container(
                height: 50,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Center(
                    child: Text(
                  "Upload Image",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
