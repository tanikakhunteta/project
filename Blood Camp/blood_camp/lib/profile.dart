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
  String? networkProfile;

  UserProfileModel? userProfileModel;
  bool enabled = false;
  XFile? image;
  bool apiLoading = false;
  @override
  void initState() {
    ApiService.getProfileDetails().then((value) {
      setState(() {
        userProfileModel = value;
        nameController.text =
            userProfileModel?.userProfileData?.userDetails?.username ?? "";
        phoneController.text =
            userProfileModel?.userProfileData?.userDetails?.phone ?? "";
        emailController.text =
            userProfileModel?.userProfileData?.userDetails?.email ?? "";
        bloodGroupController.text =
            userProfileModel?.userProfileData?.userDetails?.bloodGroup ?? "";

        stateController.text =
            userProfileModel?.userProfileData?.userDetails?.state ?? "";
        districtController.text =
            userProfileModel?.userProfileData?.userDetails?.city ?? "";
      });
    });
    super.initState();
  }

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
        backgroundColor: const Color(0xffBF222B),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllScreen(),
                  ));
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  enabled = true;
                });
              },
              icon: const Icon(Icons.edit_outlined))
        ],
      ),
      body: userProfileModel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    backgroundColor: const Color(0xffEDEDED),
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
                                const SizedBox(
                                  height: 24,
                                ),
                                Stack(children: [
                                  getUserProfile(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 100, top: 100),
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          backgroundColor: Colors.white,
                                          context: context,
                                          builder: (context) {
                                            return SizedBox(
                                              height: 70,
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                      onPressed: () async {
                                                        ImagePicker()
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
                                                                        .camera)
                                                            .then(
                                                                (value) async {
                                                          image = value;

                                                          if (value != null) {
                                                            networkProfile = await ApiService
                                                                .getUploadUrl(
                                                                    image!.path
                                                                        .split(
                                                                            '.')
                                                                        .last,
                                                                    File(image!
                                                                        .path));
                                                            setState(() {});
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        Icons.camera_outlined,
                                                        color:
                                                            Color(0xffBF222B),
                                                        size: 30,
                                                      )),
                                                  const SizedBox(
                                                    width: 100,
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        ImagePicker()
                                                            .pickImage(
                                                                source:
                                                                    ImageSource
                                                                        .gallery)
                                                            .then(
                                                                (value) async {
                                                          image = value;
                                                          if (value != null) {
                                                            networkProfile = await ApiService
                                                                .getUploadUrl(
                                                                    image!.path
                                                                        .split(
                                                                            ".")
                                                                        .last,
                                                                    File(image!
                                                                        .path));
                                                          }
                                                          setState(() {});
                                                        });
                                                      },
                                                      icon: const Icon(
                                                        Icons
                                                            .photo_library_outlined,
                                                        color:
                                                            Color(0xffBF222B),
                                                        size: 30,
                                                      ))
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: const CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          color: Color(0xffBF222B),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                                const SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  userProfileModel?.userProfileData?.userDetails
                                          ?.username ??
                                      "-",
                                  style: GoogleFonts.roboto(
                                      color: const Color(0xff303030),
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
                    const SizedBox(
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
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Name",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: phoneController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Mobile Number",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: emailController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Email",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: bloodGroupController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "Blood Group",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: stateController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "State",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            TextFormField(
                              enabled: enabled,
                              controller: districtController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 15),
                                label: Text(
                                  "District",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: const Color(0xff5C5050)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffBF222B)),
                                    borderRadius: BorderRadius.circular(41)),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff706464)),
                                    borderRadius: BorderRadius.circular(41)),
                              ),
                            ),
                            const SizedBox(
                              height: 23,
                            ),
                            Center(
                              child: ConstrainedBox(
                                constraints: BoxConstraints.tightFor(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (!enabled) {
                                      return;
                                    }
                                    setState(() {
                                      apiLoading = true;
                                    });
                                    ApiService.updateProfileDetails(
                                            name: nameController.text,
                                            bloodgroup:
                                                bloodGroupController.text,
                                            city: districtController.text,
                                            email: emailController.text,
                                            state: stateController.text)
                                        .then((value) {
                                      setState(() {
                                        apiLoading = false;
                                        enabled = false;
                                      });
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: enabled
                                          ? const Color(0xFFBF222B)
                                          : Colors.grey,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(69))),
                                  child: apiLoading
                                      ? const SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        )
                                      : Text(
                                          'SAVE',
                                          style: GoogleFonts.roboto(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
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

  Widget getUserProfile() {
    if (networkProfile != null) {
      return CircleAvatar(
          radius: 70, backgroundImage: NetworkImage(networkProfile!));
    } else if (image != null) {
      return CircleAvatar(
          radius: 70, backgroundImage: FileImage(File(image!.path)));
    } else {
      return const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(
              'assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg'));
    }
  }
}
