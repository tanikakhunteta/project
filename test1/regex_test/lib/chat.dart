import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/astrologer_profile.dart';
import 'package:regex_test/chat_intake_from.dart';
import 'package:regex_test/payment.dart';
import 'package:regex_test/ui_utils.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<ChatScreen> {
  List items = ["Marriage", "Legal", "Health", "Carrer", "Education"];
  List chat = [
    {
      "images": "assets/Group 1351@2x.png",
      "rating": "4.99",
      "choice": "Most Choice",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹40"
    },
    {
      "images": "assets/Group 1352@2x.png",
      "rating": "4",
      "choice": "(284 Total)",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1353@2x.png",
      "rating": "4.99",
      "choice": "Most Choice",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹40"
    },
    {
      "images": "assets/Group 1354@2x.png",
      "rating": "3.9",
      "choice": "New",
      "name": "Astro Rekha Sharma",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1355@2x.png",
      "rating": "4.5",
      "choice": "(800 Total)",
      "name": "Astro Ruchi",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1355@2x.png",
      "rating": "5",
      "choice": "Most Choice",
      "name": "Astro Himanshu T.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1351@2x.png",
      "rating": "4.99",
      "choice": "Most Choice",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹40"
    },
    {
      "images": "assets/Group 1352@2x.png",
      "rating": "4",
      "choice": "(284 Total)",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1353@2x.png",
      "rating": "4.99",
      "choice": "Most Choice",
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹40"
    },
    {
      "images": "assets/Group 1354@2x.png",
      "rating": "3.9",
      "choice": "New",
      "name": "Astro Rekha Sharma",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1355@2x.png",
      "rating": "4.5",
      "choice": "(800 Total)",
      "name": "Astro Ruchi",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min ",
      "total_money": "₹60"
    },
    {
      "images": "assets/Group 1355@2x.png",
      "rating": "5",
      "choice": "Most Choice",
      "name": "Astro Himanshu T.",
      "experience": "Exp: 10+ year",
      "language": "Language: Hindi, English",
      "money": "Free ",
      "total_money": "₹60"
    }
  ];
  List language = [
    "English",
    "Hindi",
    "Marathi",
    "Malayalam",
    "Kannada",
    "Tamil",
    "Telegu"
  ];
  List speciality = [
    "Love",
    "Marriage",
    "Carrer",
    "Life",
    "Health",
  ];
  List consultationMethod = [
    "Call",
    "Chat",
    "Live",
    "Video",
    "Video\nReport",
  ];
  List skill = [
    "Vedic Astrology",
    "Tarot Card reading",
    "Kundlii",
    "Palmistry",
    "Numerology",
    "Match Making",
    "Counsellor",
    "Face reading",
    "Lal Kitab",
    "Vastu",
    "Angel Card healing",
    "Abroad settlement",
  ];
  List segment = [
    "A",
    "B",
    "C",
    "D",
    "E",
  ];
  List sortBy = [
    "Popularity",
    "Experience : High to Low",
    "Experience : Low to High",
    "Total orders : High to Low",
    "Total orders : Low to High",
    "Price : High to Low",
    "Price : Low to High",
    "Rating : Low to High"
  ];
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/1mantra@2x.png",
                  height: 29,
                ),
                const Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffD9ECED)),
                  child: const Icon(
                    Icons.search,
                    color: Color(0xff59B8BE),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentScreen(),
                        ));
                  },
                  child: Container(
                    height: 30,
                    width: 81,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xff59B8BE)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.wallet,
                          color: Colors.white,
                          size: 17,
                        ),
                        Text(
                          "₹ 200",
                          style: GoogleFonts.hind(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 32,
                      width: 286,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: const [BoxShadow()]),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 92,
                            decoration: BoxDecoration(
                                color: const Color(0xff59B8BE),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                label: Text(
                                  "Call",
                                  style: GoogleFonts.hind(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          Container(
                            height: 32,
                            width: 92,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.chat,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                label: Text(
                                  "Chat",
                                  style: GoogleFonts.hind(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          Container(
                            height: 32,
                            width: 92,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.video_camera_back,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                label: Text(
                                  "Video",
                                  style: GoogleFonts.hind(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        UiUtilsScreen.menuBottomModel(
                          context,
                          sortBy,
                        );
                      },
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow()]),
                        child: const Icon(Icons.filter_alt_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        UiUtilsScreen.filterBottomModal(context, language,
                            speciality, consultationMethod, skill, segment);
                      },
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [BoxShadow()]),
                        child: const Icon(Icons.menu),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 28,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Container(
                          height: 28,
                          width: 81,
                          decoration: BoxDecoration(
                              boxShadow: const [BoxShadow()],
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            items[index],
                            style: GoogleFonts.hind(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chat.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 165 / 226,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AstrologerProfile(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 226,
                        width: 165,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(chat[index]["images"]),
                            SizedBox(
                              height: 135,
                              width: 183,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff00A8FF),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          chat[index]["rating"],
                                          style: GoogleFonts.hind(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          chat[index]["choice"],
                                          style: GoogleFonts.hind(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w100,
                                              color: const Color(0xff848484)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      chat[index]["name"],
                                      style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      chat[index]["experience"],
                                      style: GoogleFonts.hind(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w200,
                                          color: const Color(0xff848484)),
                                    ),
                                    Text(
                                      chat[index]["language"],
                                      style: GoogleFonts.hind(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w200,
                                          color: const Color(0xff848484)),
                                    ),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text: chat[index]["money"],
                                          style: GoogleFonts.hind(
                                              color: const Color(0xff00A8FF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                      TextSpan(
                                          text: chat[index]["total_money"],
                                          style: GoogleFonts.hind(
                                              color: const Color(0xff848484),
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal))
                                    ])),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ChatIntakeForm(),
                                            ));
                                      },
                                      child: Row(
                                        children: const [
                                          Icon(Icons.phone,
                                              size: 12,
                                              color: Color(0xff848484)),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Icon(
                                            Icons.video_camera_back,
                                            size: 12,
                                            color: Color(0xff848484),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Icon(Icons.chat,
                                              size: 12,
                                              color: Color(0xff848484))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
