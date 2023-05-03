import 'package:blood_camp/model/blood_camp_details_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodDonationCamp2 extends StatefulWidget {
  final CampData bloodCampDetailsData;
  const BloodDonationCamp2({super.key, required this.bloodCampDetailsData});

  @override
  State<BloodDonationCamp2> createState() => _BloodDonationCamp2State();
}

class _BloodDonationCamp2State extends State<BloodDonationCamp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Blood Donation Camp",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xffBF222B),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 156,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Blood Donation Camp",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff473D3D)),
                        ),
                        Text(
                          widget.bloodCampDetailsData.campDistrict ?? "",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff473D3D)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.bloodCampDetailsData.organizedBy ?? "",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff706464)),
                        ),
                        Text(
                          widget.bloodCampDetailsData.time ?? "",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff706464)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          widget.bloodCampDetailsData.campAddress ?? "",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff857878)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.phone_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "+91 ${widget.bloodCampDetailsData.contact ?? ""}",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff857878)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.mail_outline,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "trustblood@gmail.com",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff857878)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 54, width: MediaQuery.of(context).size.width),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBF222B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
            child: Text(
              'REGISTER AS VOLUNTARY DONOR',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
