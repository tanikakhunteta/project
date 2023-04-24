import 'package:blood_camp/blood_availability.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BecomeVolunteerScreen extends StatefulWidget {
  const BecomeVolunteerScreen({super.key});

  @override
  State<BecomeVolunteerScreen> createState() => _BecomeVolunteerScreenState();
}

class _BecomeVolunteerScreenState extends State<BecomeVolunteerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Volunteer Request Form",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Please fill the remaining details",
                    style: GoogleFonts.roboto(
                        color: Color(
                          0xff857878,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 46,
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF667685), width: 1),
                          borderRadius: BorderRadius.circular(41),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF667685), width: 1),
                          borderRadius: BorderRadius.circular(41),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF667685), width: 1),
                          borderRadius: BorderRadius.circular(41),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF667685), width: 1),
                          borderRadius: BorderRadius.circular(41),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFF667685), width: 1),
                          borderRadius: BorderRadius.circular(41),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                    height: 16,
                  ),
                  Text(
                    "Please Attached required documents",
                    style: GoogleFonts.roboto(
                        color: Color(
                          0xff857878,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF667685), width: 1),
                      borderRadius: BorderRadius.circular(41),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 16),
                      child: Text("Any NGO Certificate",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff5C5050))),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF667685), width: 1),
                      borderRadius: BorderRadius.circular(41),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 16),
                      child: Text("Aadhar Card",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff5C5050))),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF667685), width: 1),
                      borderRadius: BorderRadius.circular(41),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 16),
                      child: Text(
                        "PAN Card",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5050)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF667685), width: 1),
                      borderRadius: BorderRadius.circular(41),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 16),
                      child: Text(
                        "Other Documents",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5050)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          height: 50, width: MediaQuery.of(context).size.width),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BloodAvailabilityScreen(),
                              ));
                        },
                        child: Text(
                          'SUBMIT',
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
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
