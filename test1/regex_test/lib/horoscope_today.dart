import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoroscopeTodayScreen extends StatefulWidget {
  const HoroscopeTodayScreen({super.key});

  @override
  State<HoroscopeTodayScreen> createState() => _HoroscopeTodayScreenState();
}

class _HoroscopeTodayScreenState extends State<HoroscopeTodayScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff111111),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Horoscope",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xff111111)),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset('assets/Group 1019@2x.png')),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aries',
                          style: GoogleFonts.hind(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '21 Mar - 19 Apr',
                          style: GoogleFonts.hind(
                              color: Color(0xff59B8BE),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffE1FAFB),
                      border: Border.all(
                          width: 0.1, color: Color.fromARGB(255, 20, 184, 206)),
                      borderRadius: BorderRadius.circular(15)),
                  child: TabBar(
                      unselectedLabelStyle: GoogleFonts.hind(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      labelStyle: GoogleFonts.hind(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                          color: Color(0xff59B8BE),
                          borderRadius: BorderRadius.circular(8)),
                      tabs: const [
                        Tab(text: 'Today'),
                        Tab(text: 'Weekly'),
                        Tab(text: 'Monthly'),
                        Tab(text: 'Yearly')
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Personal Life',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'Astrology can be defined in many ways but we would\nwant to explain this as science which helps people in\nguiding them through their good/bad times of life\nand this is done based on various & different\nplanetary positions and calculations.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Luch',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Health',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'Astrology can be defined in many ways but we would\nwant to explain this as science which helps people in\nguiding them through their good/bad times of life\nand this is done based on various & different\nplanetary positions and calculations.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Profession',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Emotion',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'Astrology can be defined in many ways but we would\nwant to explain this as science which helps people in\nguiding them through their good/bad times of life\nand this is done based on various & different planetary positions and calculations.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Travel',
                  style: GoogleFonts.hind(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff59B8BE)),
                ),
                Text(
                  'It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout.',
                  style:
                      GoogleFonts.hind(fontSize: 15, color: Color(0xff333333)),
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
