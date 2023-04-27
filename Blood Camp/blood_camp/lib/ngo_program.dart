import 'package:blood_camp/become_a_volunteer.dart';
import 'package:blood_camp/blood_availability_search.dart';
import 'package:blood_camp/blood_donation_camp.dart';

import 'package:blood_camp/ngo_activity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NgoProgramScreen extends StatefulWidget {
  const NgoProgramScreen({super.key});

  @override
  State<NgoProgramScreen> createState() => _NgoProgramScreenState();
}

class _NgoProgramScreenState extends State<NgoProgramScreen> {
  List screens = [
    BloodAvailabilitySearch(),
    BecomeVolunteerScreen(),
    NgoActivityScreen(),
    // DonationScreen(),
    BloodDonationCampScreen()
  ];

  List texticon = [
    {"text": "Blood Availability\nSearch", "icon": Icons.search},
    {"text": "Become A\nVolunteer", "icon": Icons.manage_accounts_outlined},
    {"text": "NGO Activity", "icon": Icons.video_library_outlined},
    // {"text": "Blood\nDonation", "icon": Icons.bloodtype},
    {"text": "Blood Donation\nCamp", "icon": Icons.campaign}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDEDED),
        appBar: AppBar(
          title: Text(
            "NGO Program",
            style: GoogleFonts.roboto(
                fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Color(0xffBF222B),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Image.asset("assets/Rectangle 31.png"),
                SizedBox(
                  height: 16,
                ),
                GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: texticon.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1.6494,
                      crossAxisCount: 2),
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              texticon[index]["icon"],
                              color: Color(0xffBF222B),
                            ),
                            Text(
                              texticon[index]["text"],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff473D3D)),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
