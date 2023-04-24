import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/horoscope_today.dart';

class HoroscopeScreen extends StatefulWidget {
  const HoroscopeScreen({super.key});

  @override
  State<HoroscopeScreen> createState() => _HoroscopeScreenState();
}

class _HoroscopeScreenState extends State<HoroscopeScreen> {
  static List horoscope = [
    {
      "color": Colors.red,
      "icon": Icons.airlines,
      "name": "Aries",
      "time": "21 Mar - 19 Apr"
    },
    {
      "color": Colors.blue,
      "icon": Icons.translate,
      "name": "Taurus",
      "time": "20 Apr - 20 May"
    },
    {
      "color": Colors.pink,
      "icon": Icons.group_remove,
      "name": "Gemini",
      "time": "21 May - 20 Jun"
    },
    {
      "color": Colors.blue,
      "icon": Icons.cancel_rounded,
      "name": "Cancer",
      "time": "21 Jun - 22 Jul"
    },
    {
      "color": Colors.red,
      "icon": Icons.airlines,
      "name": "Leo",
      "time": "23 Jul - 22 Aug"
    },
    {
      "color": Colors.blue,
      "icon": Icons.translate,
      "name": "Virgo",
      "time": "23 Aug - 22 Sep"
    },
    {
      "color": Colors.pink,
      "icon": Icons.group_remove,
      "name": "Libra",
      "time": "23 Sep - 22 Oct"
    },
    {
      "color": Colors.blue,
      "icon": Icons.cancel_rounded,
      "name": "Scorpio",
      "time": "23 Oct - 21 Nov"
    },
    {
      "color": Colors.red,
      "icon": Icons.airlines,
      "name": "Sagittarius",
      "time": "22 Mar - 21 Dec"
    },
    {
      "color": Colors.blue,
      "icon": Icons.translate,
      "name": "Copricon",
      "time": "22 Dec - 20 Jan"
    },
    {
      "color": Colors.pink,
      "icon": Icons.group_remove,
      "name": "Aquarius",
      "time": "21 Jan - 18 Feb"
    },
    {
      "color": Colors.blue,
      "icon": Icons.cancel_rounded,
      "name": "Pisces",
      "time": "18 Feb - 20 Mar"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
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
              color: const Color(0xff111111)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            height: 290,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Color(0xffE1FAFB)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "24",
                        style: GoogleFonts.hind(
                            color: const Color(0xff59B8BE),
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Jun, 2022\nFriday",
                        style: GoogleFonts.hind(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/suraj-removebg-preview@2x.png",
                    height: 122,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff59B8BE),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                // BorderRadius
              ),
              child: Container(
                margin: const EdgeInsetsDirectional.only(top: 1),
                height: 525,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: horoscope.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 22,
                            crossAxisSpacing: 0,
                            childAspectRatio: 1.15,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HoroscopeTodayScreen(),
                                  ));
                            },
                            child: SizedBox(
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Card(
                                      child: Container(
                                          height: 66,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: Center(
                                              child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(horoscope[index]["name"],
                                                  style: GoogleFonts.hind(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text(horoscope[index]["time"],
                                                  style: GoogleFonts.hind(
                                                      color: const Color(
                                                          0xff59B8BE),
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          )))),
                                ),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: horoscope[index]["color"]),
                                        child: Icon(
                                          horoscope[index]["icon"],
                                          color: Colors.white,
                                        )))
                              ]),
                            ),
                          ));
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
