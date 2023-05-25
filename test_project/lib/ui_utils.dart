import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiUtilsScreen {
  static Widget drawer() {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 180,
            color: Color.fromARGB(255, 0, 100, 136),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/WhatsApp Image 2023-05-04 at 3.40.26 PM.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tanika Khunteta",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "952922166",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "khandelwaltanu123@gmail.com",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "171, 172 Shree Rampath, Raghunathpuri, Jhotwara, Jaipur",
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

 
}

