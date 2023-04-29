import 'package:blood_camp/blood_donation_camp_2.dart';
import 'package:blood_camp/model/blood_camp_details_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodDonationCamp1 extends StatefulWidget {
  final BloodCampDetailsModel bloodCampDetailsModel;
  const BloodDonationCamp1({super.key, required this.bloodCampDetailsModel});

  @override
  State<BloodDonationCamp1> createState() => _BloodDonationCamp1State();
}

class _BloodDonationCamp1State extends State<BloodDonationCamp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blood Donation Camp",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            ListView.builder(
              itemCount: widget.bloodCampDetailsModel.data!.campData!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                CampData bloodCampDetailsData =
                    widget.bloodCampDetailsModel.data!.campData![index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BloodDonationCamp2(
                                    bloodCampDetailsData: bloodCampDetailsData,
                                  )));
                    },
                    child: Container(
                      height: 69,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  bloodCampDetailsData.campName ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff473D3D)),
                                ),
                                Text(
                                  bloodCampDetailsData.campAddress ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff76AF3E)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  bloodCampDetailsData.organizedBy ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff706464)),
                                ),
                                Text(
                                  bloodCampDetailsData.time ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff706464)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
