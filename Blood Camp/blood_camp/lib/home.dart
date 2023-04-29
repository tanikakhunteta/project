import 'dart:developer';

import 'package:blood_camp/become_a_volunteer.dart';
import 'package:blood_camp/blood_availability_search.dart';
import 'package:blood_camp/model/profile_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/ngo_activity.dart';
import 'package:blood_camp/ngo_program.dart';
import 'package:blood_camp/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:super_banners/super_banners.dart';
import 'blood_donation_camp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserProfileModel? userProfileModel;
  @override
  void initState() {
    log('initState');

    ApiService.getProfileDetails().then((value) {
      print(value);
      setState(() {
        userProfileModel = value;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  List screens = [
    BloodAvailabilitySearch(),

    BecomeVolunteerScreen(),
    NgoActivityScreen(),
    // DonationScreen(),
    BloodDonationCampScreen()
  ];
  var rating = 0.0;
  List images = [
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg",
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg",
    "assets/man-suit-standing-office-with-clipboard-pointing-poster-with-words.jpg"
  ];
  List text_icon = [
    {"icon": Icons.search, "text": "Blood Availability Search"},
    {"icon": Icons.manage_accounts_outlined, "text": "Become a\nVolunteer"},
    {"icon": Icons.video_library_outlined, "text": "NGO Activity"},
    // {"icon": Icons.bloodtype_outlined, "text": "Blood\nDonation"},
    {"icon": Icons.campaign_outlined, "text": "Blood Donation\nCamp"}
  ];

  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Color(0xffBF222B),
          onPressed: () {},
          child: Icon(
            Icons.phone_in_talk_outlined,
          ),
        ),
        key: key,
        drawer: UiUtilsScreen.drawer(
            key,
            context,
            userProfileModel?.userProfileData?.userDetails?.username ?? "",
            userProfileModel?.userProfileData?.userDetails?.phone ?? ""),
        appBar: UiUtilsScreen.appBar(key, context,
            userProfileModel?.userProfileData?.userDetails?.username ?? ""),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 168,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 228, 228, 228)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset("assets/Rectangle 31.png"),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 123,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 241, 238, 238)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'NGO Has Been Upto',
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff473D3D)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 67,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Number of Users',
                            style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Text(
                            '10,000',
                            style: TextStyle(
                                fontSize: 28,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffBF222B),
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
            ),
            Container(
                height: 323,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NGO Program',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NgoProgramScreen(),
                                ));
                          },
                          child: Text(
                            'See All   ',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff0E4EAE)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: text_icon.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (index == 1) {
                                return;
                              }
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return screens[index];
                                },
                              ));
                            },
                            child: Container(
                              height: 100,
                              width: 128,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(text_icon[index]["icon"],
                                            color: Color(0xffBF222B)),
                                        Text(
                                          text_icon[index]["text"],
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                              height: 1.2,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  if (index == 1)
                                    Positioned(
                                      left: 10,
                                      child: CornerBanner(
                                        bannerPosition:
                                            CornerBannerPosition.topLeft,
                                        bannerColor: Color(0xffBF222B),
                                        child: Text(
                                          "Coming Soon",
                                          style: GoogleFonts.roboto(
                                              color: Colors.white, fontSize: 8),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 184,
                      child: PageView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(images[index]))),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ]),
                )),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 122,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest News",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0E4EAE)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 58,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffEBE7E7),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: CircleAvatar(
                                radius: 21,
                                backgroundImage:
                                    AssetImage("assets/Ellipse 16.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              "Simply dummy text of the printing and type\nsetting industry.",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff473D3D)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 343,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Feedback",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff473D3D)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Feel free to share your feedback with us",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff473D3D)),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            SmoothStarRating(
                                allowHalfRating: false,
                                onRatingChanged: (v) {
                                  rating = v;
                                  setState(() {});
                                },
                                starCount: 5,
                                rating: rating,
                                size: 40.0,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_border,
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                spacing: 0.0),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Tell us about your experience",
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff998D8D)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            TextFormField(
                                maxLines: 4,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff998D8D)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff998D8D)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    hintText: "Write here",
                                    hintStyle: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff998D8D)))),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      height: 46, width: 81),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          backgroundColor: Colors.white),
                                      onPressed: () {},
                                      child: Text(
                                        "Cancel",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff473D3D)),
                                      )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      height: 46, width: 156),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          backgroundColor: Color(0xffADA2A2)),
                                      onPressed: () {},
                                      child: Text(
                                        "Submit Feedback",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
