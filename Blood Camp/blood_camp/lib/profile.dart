import 'dart:io';


import 'package:blood_camp/model/profile_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bloodGroupController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();

  UserProfileModel? userProfileModel;
  bool enabled = false;
  @override
  void initState() {
    ApiService.getProfileDetails().then((value) {
      setState(() {
        userProfileModel = value;
        nameController.text = userProfileModel?.userProfileData?.username ?? "";
        phoneController.text = userProfileModel?.userProfileData?.phone ?? "";
        emailController.text = userProfileModel?.userProfileData?.email ?? "";
        bloodGroupController.text =
            userProfileModel?.userProfileData?.bloodGroup ?? "";

        stateController.text = userProfileModel?.userProfileData?.state ?? "";
        districtController.text = userProfileModel?.userProfileData?.city ?? "";
      });
    });
    super.initState();
  }

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
          IconButton(
              onPressed: () {
                setState(() {
                  enabled = true;
                });
              },
              icon: Icon(Icons.edit_outlined))
        ],
      ),
      body: userProfileModel == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
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
                                                        color:
                                                            Color(0xffBF222B),
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
                                                        color:
                                                            Color(0xffBF222B),
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
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 100),
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
                                  userProfileModel?.userProfileData?.username ??
                                      "-",
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
                      height: 16,
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            TextFormField(
                              enabled: enabled,
                              controller: nameController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Name",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: phoneController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Mobile Number",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: emailController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Email",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: bloodGroupController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Blood Group",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: stateController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "State",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: districtController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "District",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
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
                                  onPressed: () {
                                    ApiService.updateProfileDetails(
                                        name: nameController.text,
                                        bloodgroup: bloodGroupController.text,
                                        city: districtController.text,
                                        email: emailController.text,
                                        state: stateController.text);
                                  },
                                  child: Text(
                                    'SAVE',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFBF222B),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(69))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
