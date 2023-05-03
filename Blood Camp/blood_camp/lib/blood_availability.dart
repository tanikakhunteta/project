import 'package:blood_camp/available_blood.dart';
import 'package:blood_camp/model/blood_avail_details_model.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodAvailabilityScreen extends StatefulWidget {
  final BloodAvailDetailsModel bloodAvailDetailsModel;
  final String bloodGroup;
  const BloodAvailabilityScreen({
    super.key,
    required this.bloodAvailDetailsModel,
    required this.bloodGroup,
  });

  @override
  State<BloodAvailabilityScreen> createState() =>
      _BloodAvailabilityScreenState();
}

class _BloodAvailabilityScreenState extends State<BloodAvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: AppBar(
        title: Text(
          "Blood Availability Search",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffBF222B),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              itemCount:
                  widget.bloodAvailDetailsModel.data!.bloodAvailData!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                BloodAvailData bloodAvailDetailsData =
                    widget.bloodAvailDetailsModel.data!.bloodAvailData![index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AvailableBloodScreen(
                                bloodGroup: widget.bloodGroup,
                                bloodAvailDetailsData: bloodAvailDetailsData),
                          ));
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
                                  bloodAvailDetailsData.srcName ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff473D3D)),
                                ),
                                Text(
                                  "Available",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff76AF3E)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  bloodAvailDetailsData.category ?? "",
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff706464)),
                                ),
                                Text(
                                  widget.bloodGroup,
                                  style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff706464)),
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
