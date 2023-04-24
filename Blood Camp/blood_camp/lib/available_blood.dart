import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableBloodScreen extends StatefulWidget {
  const AvailableBloodScreen({super.key});

  @override
  State<AvailableBloodScreen> createState() => _AvailableBloodScreenState();
}

class _AvailableBloodScreenState extends State<AvailableBloodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blood Availability Search",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Color(0xffBF222B),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
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
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trust Blood Hospital",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff473D3D)),
                        ),
                        Text(
                          "Available",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff76AF3E)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Updated 15-03-2023",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff706464)),
                        ),
                        Text(
                          "Blood Group O+",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff706464)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "Village -Khichan, Phalodi, Jodhpur, Rajasthan",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff857878)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone_outlined,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "+91 91667120102",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff857878)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.33,
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail_outline,
                            size: 13, color: Color(0xffBF222B)),
                        Text(
                          "trustblood@gmail.com",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff857878)),
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 54, width: MediaQuery.of(context).size.width),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'CALL NOW',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFBF222B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
          ),
        ),
      ),
    );
  }
}
