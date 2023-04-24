import 'dart:io';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'all_sreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? image;
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: key,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Profile",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffBF222B),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllScreen(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined))
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Color(0xffEDEDED),
                collapsedHeight: 221,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Stack(children: [
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          height: 70,
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    ImagePicker()
                                                        .pickImage(
                                                            source:
                                                                ImageSource
                                                                    .camera)
                                                        .then((value) {
                                                      image = value;
                                                      setState(() {});
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.camera_outlined,
                                                    color: Color(0xffBF222B),
                                                    size: 30,
                                                  )),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    ImagePicker()
                                                        .pickImage(
                                                            source:
                                                                ImageSource
                                                                    .gallery)
                                                        .then((value) {
                                                      image = value;
                                                      setState(() {});
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .photo_library_outlined,
                                                    color: Color(0xffBF222B),
                                                    size: 30,
                                                  ))
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: image != null
                                    ? CircleAvatar(
                                        radius: 70,
                                        backgroundImage:
                                            FileImage(File(image!.path)),
                                      )
                                    : CircleAvatar(
                                        radius: 70,
                                        backgroundImage: const AssetImage(
                                            'assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg'),
                                      ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 100, top: 100),
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Color(0xffBF222B),
                                  ),
                                ),
                              )
                            ]),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              "Vikash Sharma",
                              style: GoogleFonts.roboto(
                                  color: Color(0xff303030),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 9,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'Name',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'Mobile Number',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'Email',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'Blood Group',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'State',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 46,
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF667685), width: 1),
                              borderRadius: BorderRadius.circular(41),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 12,
                            child: Container(
                              padding: EdgeInsets.only(
                                  bottom: 10, left: 10, right: 10),
                              color: Colors.white,
                              child: Text(
                                'District',
                                style: GoogleFonts.roboto(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                              height: 50,
                              width: MediaQuery.of(context).size.width),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'SAVE',
                              style: GoogleFonts.roboto(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFBF222B),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(69))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
