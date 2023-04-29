import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/about.dart';
import 'package:regex_test/astro_live.dart';
import 'package:regex_test/astrologer_profile.dart';
import 'package:regex_test/blog.dart';
import 'package:regex_test/chat.dart';
import 'package:regex_test/claim_cashback.dart';
import 'package:regex_test/contact.dart';
import 'package:regex_test/edit_profile.dart';
import 'package:regex_test/faq.dart';
import 'package:regex_test/following.dart';
import 'package:regex_test/help.dart';
import 'package:regex_test/horoscope.dart';
import 'package:regex_test/language.dart';
import 'package:regex_test/login.dart';
import 'package:regex_test/my_order.dart';
import 'package:regex_test/my_wallet.dart';
import 'package:regex_test/notification.dart';
import 'package:regex_test/payment.dart';
import 'package:regex_test/privacy.dart';

import 'package:regex_test/recharge_history.dart';
import 'package:regex_test/reviews.dart';
import 'package:regex_test/terms_condition.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var rating = 3.0;
  static List people_details = [
    {
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "work": "Tarot, Numerology, Prashna...",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min",
      "cancel_money": " ₹60"
    },
    {
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "work": "Tarot, Numerology, Prashna...",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min",
      "cancel_money": "₹60"
    },
    {
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "work": "Tarot, Numerology, Prashna...",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min",
      "cancel_money": "₹60"
    },
    {
      "name": "Astro Keshav M.",
      "experience": "Exp: 10+ year",
      "work": "Tarot, Numerology, Prashna...",
      "language": "Language: Hindi, English",
      "money": "New user ₹40/min",
      "cancel_money": "₹60"
    }
  ];
  static List live_astrologer = [
    {
      "image": "assets/drop-1004250__480.jpg",
      "text": "Live",
      "name": "Mantra As.."
    },
    {
      "image": "assets/fashion-3080644_1280 (2).jpg",
      "text": "Live",
      "name": "Astrology"
    },
    {
      "image": "assets/lake-2608425__480.jpg",
      "text": "00:05:30",
      "name": "Mantra As.."
    },
    {
      "image": "assets/drop-1004250__480.jpg",
      "text": "02:05:30",
      "name": "Astrology"
    },
    {
      "image": "assets/fashion-3080644_1280 (2).jpg",
      "text": "Live",
      "name": "Astrology"
    },
    {
      "image": "assets/lake-2608425__480.jpg",
      "text": "00:05:30",
      "name": "Mantra As.."
    }
  ];
  static List services = [
    {"color": Colors.blue, "icon": Icons.people, "name": "Marriage"},
    {"color": Colors.pink, "icon": Icons.line_weight, "name": "Legal"},
    {"color": Colors.red, "icon": Icons.health_and_safety, "name": "Health"},
    {
      "color": Colors.amber,
      "icon": Icons.cast_for_education,
      "name": "Education"
    },
    {"color": Colors.green, "icon": Icons.text_increase, "name": "Success"},
    {"color": Colors.brown, "icon": Icons.business, "name": "Business"}
  ];
  static List astro = [
    {
      "color": Colors.grey,
      "icon": Icons.confirmation_number_outlined,
      "name": "Vedic"
    },
    {
      "color": Colors.green,
      "icon": Icons.format_list_numbered,
      "name": "Numero"
    },
    {
      "color": const Color.fromARGB(255, 219, 219, 219),
      "icon": Icons.videogame_asset_outlined,
      "name": "Vastu"
    },
    {"color": Colors.blue, "icon": Icons.face, "name": "Face Reading"},
    {
      "color": const Color.fromARGB(255, 186, 206, 187),
      "icon": Icons.handshake_rounded,
      "name": "Kundli"
    },
  ];
  static List horoscope = [
    {"color": Colors.red, "icon": Icons.airlines, "name": "Aries"},
    {"color": Colors.blue, "icon": Icons.translate, "name": "Taurus"},
    {"color": Colors.pink, "icon": Icons.group_remove, "name": "Gemini"},
    {"color": Colors.blue, "icon": Icons.cancel_rounded, "name": "Cancer"},
  ];
  static List highlights = [
    {
      "icon": Icons.people,
      "text": "24*7 support in English and all\nregional language",
      "name":
          "Select your astrologer & we'll help you\nunlock the best selling price based."
    },
    {
      "icon": Icons.high_quality,
      "text": "100% Quality Insured",
      "name":
          "Select your astrologer & we'll help you\nunlock the best selling price based."
    },
    {
      "icon": Icons.refresh_rounded,
      "text": "Refunds Applicable Without any\nQuestions Asked",
      "name":
          "Select your astrologer & we'll help you\nunlock the best selling price based."
    },
  ];
  static List popular_blog = [
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ..."
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ..."
    }
  ];
  static List user_review = [
    {
      "image": "assets/2@2x.png",
      "name": "Rohan Sharma",
      "place": "Jaipur",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ..."
    },
    {
      "image": "assets/2@2x.png",
      "name": "Rohan Sharma",
      "place": "Jaipur",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ..."
    }
  ];
  List drawer = [
    {"icon": Icons.online_prediction_rounded, "text": "My Orders"},
    {"icon": Icons.edit, "text": "Edit Profile"},
    {"icon": Icons.money, "text": "Claim Cashback"},
    {"icon": Icons.attach_money, "text": "Recharge"},
    {"icon": Icons.currency_rupee, "text": "Recharge History"},
    {"icon": Icons.wallet, "text": "My Wallet"},
    {"icon": Icons.thumb_up_alt_outlined, "text": "Following"},
    {"icon": Icons.help, "text": "Help and Support"},
    {"icon": Icons.contact_page, "text": "Contact Us"},
    {"icon": Icons.info_sharp, "text": "About Us"},
    {"icon": Icons.privacy_tip, "text": "Privacy Policy"},
    {
      "icon": Icons.control_point_duplicate_outlined,
      "text": "Terms And Condition"
    },
    {"icon": Icons.question_mark, "text": "FAQ"},
  ];
  List screens = const [
    MyOrderScreen(),
    EditProfileScreen(),
    ClaimCashbackScreen(),
    PaymentScreen(),
    RechargeHistoryScreen(),
    MyWalletScreen(),
    FollowingScreen(),
    HelpScreen(),
    ContactScreen(),
    AboutScreen(),
    PrivacyScreen(),
    TermsScreen(),
    FaqScreen(),
  ];
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldkey,
            drawer: Drawer(
                width: 289,
                backgroundColor: const Color(0xff59B8BE),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 71,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 46,
                              width: 46,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/2@2x.png")),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rohan Sharma",
                                  style: GoogleFonts.hind(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Text(
                                  "+91-7891023456",
                                  style: GoogleFonts.hind(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        height: 34,
                        width: 258,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Wallet Balance",
                              style: GoogleFonts.hind(fontSize: 17),
                            ),
                            Text(
                              "₹ 500",
                              style: GoogleFonts.hind(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff59B8BE)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => screens[index],
                                  ));
                            },
                            child: SizedBox(
                              height: 46,
                              width: 289,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Icon(
                                        drawer[index]["icon"],
                                        color: Color(0xff59B8BE),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      drawer[index]["text"],
                                      style: GoogleFonts.hind(
                                          fontSize: 17, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const Divider(color: Colors.white, thickness: 1),
                        itemCount: drawer.length),
                    const SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                            height: 50, width: 254),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.white),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return ClipRRect(
                                    child: AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      buttonPadding: const EdgeInsets.all(0),
                                      actionsPadding: const EdgeInsets.all(0),
                                      actions: [
                                        ConstrainedBox(
                                          constraints:
                                              const BoxConstraints.tightFor(
                                                  height: 40, width: 140),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xff59B8BE),
                                                  shape:
                                                      ContinuousRectangleBorder()),
                                              onPressed: () {},
                                              child: Text(
                                                "Yes",
                                                style: GoogleFonts.hind(
                                                    fontSize: 15),
                                              )),
                                        ),
                                        ConstrainedBox(
                                          constraints:
                                              const BoxConstraints.tightFor(
                                                  height: 40, width: 140),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xff59B8BE),
                                                  shape:
                                                      ContinuousRectangleBorder()),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "No",
                                                style: GoogleFonts.hind(
                                                    fontSize: 15),
                                              )),
                                        )
                                      ],
                                      content: Text(
                                        "Do you want to logout?",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.hind(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              "Log Out",
                              style: GoogleFonts.hind(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff59B8BE)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: Text(
                          "Sign up as Astrologer",
                          style: GoogleFonts.hind(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                )),
            body: ListView(children: [
              SizedBox(
                  height: 426,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: [
                    Container(
                        height: 367,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.white, Color(0xff59B8BE)])),
                        child: Column(children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(children: [
                                InkWell(
                                  onTap: () {
                                    _scaffoldkey.currentState?.openDrawer();
                                  },
                                  child: const Icon(
                                    Icons.menu,
                                  ),
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Row(children: [
                                  Image.asset(
                                    "assets/location@2x.png",
                                    height: 25,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Your City",
                                            style: GoogleFonts.hind(
                                              color: const Color(0xffC4C4C4),
                                              fontSize: 12,
                                            )),
                                        Row(children: [
                                          Text(
                                            "Jaipur",
                                            style: GoogleFonts.hind(
                                                color: const Color(0xff000000),
                                                fontSize: 16),
                                          ),
                                          const Icon(Icons.keyboard_arrow_down)
                                        ])
                                      ])
                                ]),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PaymentScreen(),
                                        ));
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 81,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: const Color(0xff59B8BE)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.wallet_sharp,
                                              size: 16,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Text("₹ 200",
                                                style: GoogleFonts.hind(
                                                    fontSize: 16,
                                                    color: Colors.white))
                                          ])),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NotificationScreen(),
                                          ));
                                    },
                                    child: const Icon(Icons.notification_add)),
                                const SizedBox(
                                  width: 17,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LanguageScreen(),
                                          ));
                                    },
                                    child: const Icon(Icons.language))
                              ])),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white),
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Row(children: [
                                        const Icon(
                                          Icons.search,
                                          color: Color(0xffBABABA),
                                        ),
                                        Text("Astrologers, products,....",
                                            style: GoogleFonts.cabin(
                                              color: const Color(0xffBABABA),
                                              fontSize: 16,
                                            ))
                                      ])))),
                          const SizedBox(
                            height: 11,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/offer@2x.png",
                                  height: 206,
                                ),
                                Column(children: [
                                  Text("On your 1st recharge or app\nPay ₹1",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.hind(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                      height: 53,
                                      width: 102,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bresh-shape@2x.png"))),
                                      child: Center(
                                          child: Text(
                                        "Get ₹100",
                                        style: GoogleFonts.hind(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ))),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                      height: 28,
                                      width: 122,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black),
                                      child: Center(
                                          child: Text(
                                        "Click here",
                                        style: GoogleFonts.hind(
                                            fontSize: 14, color: Colors.white),
                                      )))
                                ])
                              ])
                        ])),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AstrologerProfile(),
                                ));
                          },
                          child: SizedBox(
                              height: 118,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: people_details.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            width: 283,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            people_details[
                                                                index]["name"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: const Color(
                                                                    0xff060219))),
                                                        Text(
                                                            people_details[
                                                                    index]
                                                                ["experience"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: const Color(
                                                                    0xff848484))),
                                                        Text(
                                                            people_details[
                                                                index]["work"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: const Color(
                                                                    0xff848484))),
                                                        Text(
                                                            people_details[
                                                                    index]
                                                                ["language"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: const Color(
                                                                    0xff848484))),
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                              TextSpan(
                                                                  text: people_details[
                                                                          index]
                                                                      ["money"],
                                                                  style: GoogleFonts.hind(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: const Color(
                                                                          0xff59B8BE))),
                                                              TextSpan(
                                                                  text: people_details[
                                                                          index]
                                                                      [
                                                                      "cancel_money"],
                                                                  style: GoogleFonts.hind(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: const Color(
                                                                          0xff848484)))
                                                            ]))
                                                      ]),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                            height: 49,
                                                            width: 49,
                                                            decoration: const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                image: DecorationImage(
                                                                    image: AssetImage(
                                                                        "assets/NoPath - Copy (4)@2x.png")))),
                                                        Container(
                                                            height: 24,
                                                            width: 91,
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    const Color(
                                                                        0xff59B8BE),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                            child: Center(
                                                                child: Text(
                                                                    "Online",
                                                                    style: GoogleFonts.hind(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color: Colors
                                                                            .white)))),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: const [
                                                              Icon(
                                                                  Icons
                                                                      .phone_outlined,
                                                                  size: 14,
                                                                  color: Color(
                                                                      0xff848484)),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Icon(
                                                                  Icons
                                                                      .videocam_outlined,
                                                                  size: 14,
                                                                  color: Color(
                                                                      0xff848484)),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Icon(
                                                                  Icons
                                                                      .comment_outlined,
                                                                  size: 14,
                                                                  color: Color(
                                                                      0xff848484))
                                                            ])
                                                      ])
                                                ])));
                                  })),
                        ))
                  ])),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                      height: 30,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("See All",
                              style: GoogleFonts.hind(
                                  decoration: TextDecoration.underline,
                                  color: const Color(0xff59B8BE),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))))),
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AstroLiveScreen(),
                          ));
                    },
                    child: SizedBox(
                        height: 126,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Text("Live Astrologer",
                                  style: GoogleFonts.hind(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff333333))),
                              Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: live_astrologer.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: SizedBox(
                                                width: 61,
                                                height: 72,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                          height: 59,
                                                          child: Stack(
                                                              children: [
                                                                Center(
                                                                    child: Container(
                                                                        height:
                                                                            49,
                                                                        width:
                                                                            49,
                                                                        decoration: BoxDecoration(
                                                                            border:
                                                                                Border.all(color: const Color(0xff59B8BE)),
                                                                            shape: BoxShape.circle,
                                                                            color: Colors.white))),
                                                                Center(
                                                                    child: Container(
                                                                        height:
                                                                            41,
                                                                        width:
                                                                            41,
                                                                        decoration: BoxDecoration(
                                                                            image:
                                                                                DecorationImage(image: AssetImage(live_astrologer[index]["image"]), fit: BoxFit.cover),
                                                                            border: Border.all(color: const Color(0xff59B8BE)),
                                                                            shape: BoxShape.circle,
                                                                            color: const Color(0xffD9ECED)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: 14,
                                                                        width: 41,
                                                                        decoration: BoxDecoration(color: const Color(0xff59B8BE), borderRadius: BorderRadius.circular(4)),
                                                                        child: Center(
                                                                            child: Text(
                                                                          live_astrologer[index]
                                                                              [
                                                                              "text"],
                                                                          style: GoogleFonts.hind(
                                                                              fontSize: 10,
                                                                              color: Colors.white),
                                                                        ))))
                                                              ])),
                                                      Text(
                                                        live_astrologer[index]
                                                            ["name"],
                                                        style: GoogleFonts.hind(
                                                            fontSize: 12),
                                                      )
                                                    ])));
                                      }))
                            ])),
                  )),
              Container(
                  color: const Color(0xffF2F2F2),
                  height: 126,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text("Services",
                                style: GoogleFonts.hind(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff333333))),
                            Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: services.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 27),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: services[index]
                                                            ["color"]),
                                                    child: Icon(
                                                      services[index]["icon"],
                                                      color: Colors.white,
                                                    )),
                                                Text(services[index]["name"],
                                                    style: GoogleFonts.hind(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]));
                                    }))
                          ]))),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(),
                      ));
                },
                child: SizedBox(
                    height: 126,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Text("Our Astro",
                                  style: GoogleFonts.hind(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff333333))),
                              Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: astro.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 33),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: astro[index]
                                                            ["color"]),
                                                    child: Icon(
                                                      astro[index]["icon"],
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    astro[index]["name"],
                                                    style: GoogleFonts.hind(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ]));
                                      }))
                            ]))),
              ),
              Container(
                  color: const Color(0xffF2F2F2),
                  width: MediaQuery.of(context).size.width,
                  height: 163,
                  child: Row(children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/gift@2x.png",
                                height: 59,
                              ),
                              Text("Hot Offer",
                                  style: GoogleFonts.hind(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              Text("Select your offer &\nwe'll help you",
                                  style: GoogleFonts.hind(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal))
                            ])),
                    const Spacer(),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(children: [
                            Image.asset(
                              "assets/Group 1631@2x.png",
                              height: 113,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 130),
                                child: Column(children: [
                                  Container(
                                      height: 23,
                                      width: 72,
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Center(
                                          child: Text(
                                        "Holiday",
                                        style: GoogleFonts.hind(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff59B8BE)),
                                      ))),
                                  Text(
                                    "OFFERS",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ]))
                          ])
                        ])
                  ])),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                      height: 145,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Horoscope",
                                      style: GoogleFonts.hind(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff333333))),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                HoroscopeScreen(),
                                          ));
                                    },
                                    child: Text("See All",
                                        style: GoogleFonts.hind(
                                            decoration:
                                                TextDecoration.underline,
                                            color: const Color(0xff59B8BE),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ]),
                            const SizedBox(
                              height: 13,
                            ),
                            Expanded(
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: horoscope.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: SizedBox(
                                              width: 79,
                                              child: Stack(children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        height: 45,
                                                        width: 80,
                                                        decoration: BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow()
                                                            ],
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    10),
                                                            color:
                                                                Colors.white),
                                                        child: Padding(
                                                            padding:
                                                                const EdgeInsets.only(
                                                                    top: 15),
                                                            child: Center(
                                                                child: Text(horoscope[index]["name"],
                                                                    style: GoogleFonts.hind(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w500)))))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: horoscope[
                                                                        index]
                                                                    ["color"]),
                                                        child: Icon(
                                                          horoscope[index]
                                                              ["icon"],
                                                          color: Colors.white,
                                                        )))
                                              ])));
                                    }))
                          ]))),
              SizedBox(
                  height: 390,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Highlights",
                              style: GoogleFonts.hind(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Expanded(
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: highlights.length,
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                          height: 115,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 63,
                                                    width: 63,
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffE1FAFB)),
                                                    child: Icon(
                                                      highlights[index]["icon"],
                                                      size: 40,
                                                      color: Colors.black,
                                                    )),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          highlights[index]
                                                              ["text"],
                                                          style: GoogleFonts.hind(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                      Text(
                                                          highlights[index]
                                                              ["name"],
                                                          style: GoogleFonts.hind(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: const Color(
                                                                  0xff848484)))
                                                    ])
                                              ]));
                                    }))
                          ]))),
              SizedBox(
                  height: 310,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    const SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Blog",
                            style: GoogleFonts.hind(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlogScreen(),
                                  ));
                            },
                            child: Text("View All",
                                style: GoogleFonts.hind(
                                    decoration: TextDecoration.underline,
                                    color: const Color(0xff59B8BE),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: popular_blog.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                          height: 230,
                                          width: 268,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [BoxShadow()]),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 134,
                                                  width: 268,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              popular_blog[
                                                                      index]
                                                                  ["image"]))),
                                                ),
                                                SizedBox(
                                                    height: 116,
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 8),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              Text(
                                                                popular_blog[
                                                                        index]
                                                                    ["title"],
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: const Color(
                                                                        0xff333333)),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    popular_blog[
                                                                            index]
                                                                        [
                                                                        "name"],
                                                                    style: GoogleFonts.hind(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: const Color(
                                                                            0xff59B8BE)),
                                                                  ),
                                                                  Text(
                                                                    popular_blog[
                                                                            index]
                                                                        [
                                                                        "date"],
                                                                    style: GoogleFonts.hind(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        color: const Color(
                                                                            0xff59B8BE)),
                                                                  )
                                                                ],
                                                              ),
                                                              Text(
                                                                popular_blog[
                                                                        index]
                                                                    ["content"],
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    color: const Color(
                                                                        0xff848484)),
                                                              )
                                                            ])))
                                              ])));
                                })))
                  ])),
              const SizedBox(
                height: 22,
              ),
              Stack(children: [
                Container(
                  height: 156,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/Group 1398@2x.png"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(children: [
                      Text(
                        "CEO Connect",
                        style: GoogleFonts.hind(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff59B8BE)),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Container(
                                  color: Colors.white,
                                  height: 336,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "CEO Connect",
                                              style: GoogleFonts.hind(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const Spacer(),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Icon(Icons.close))
                                          ],
                                        ),
                                        const Divider(),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Comments",
                                          style: GoogleFonts.hind(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      top: 8,
                                                      left: 10,
                                                      bottom: 74),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                      color:
                                                          Color(0xff59B8BE))),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: const BorderSide(
                                                      color:
                                                          Color(0xff59B8BE))),
                                              hintText: "Massage",
                                              hintStyle: GoogleFonts.hind(
                                                  fontSize: 17,
                                                  color:
                                                      const Color(0xffA2A2A2))),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ConstrainedBox(
                                          constraints: BoxConstraints.tightFor(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xff59B8BE),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: const Text("Submit")),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                            height: 27,
                            width: 92,
                            decoration: BoxDecoration(
                                color: const Color(0xff59B8BE),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                                child: Text(
                              "Book",
                              style: GoogleFonts.hind(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ))),
                      )
                    ]))
              ]),
              SizedBox(
                  height: 183,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    const SizedBox(
                      height: 17,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "User Reviews",
                                style: GoogleFonts.hind(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ReviewScreen(),
                                      ));
                                },
                                child: Text("View All",
                                    style: GoogleFonts.hind(
                                        decoration: TextDecoration.underline,
                                        color: const Color(0xff59B8BE),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              )
                            ])),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: popular_blog.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Container(
                                          height: 144,
                                          width: 268,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [BoxShadow()]),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 11),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 58,
                                                        width: 58,
                                                        decoration:
                                                            BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  user_review[
                                                                          index]
                                                                      [
                                                                      "image"])),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            user_review[index]
                                                                ["name"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          SmoothStarRating(
                                                              allowHalfRating:
                                                                  false,
                                                              onRatingChanged:
                                                                  (v) {
                                                                rating = v;
                                                                setState(() {});
                                                              },
                                                              starCount: 5,
                                                              rating: rating,
                                                              size: 13.0,
                                                              filledIconData:
                                                                  Icons.star,
                                                              halfFilledIconData:
                                                                  Icons
                                                                      .star_border,
                                                              color:
                                                                  Colors.green,
                                                              borderColor:
                                                                  Colors.green,
                                                              spacing: 0.0),
                                                          Text(
                                                            user_review[index]
                                                                ["place"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: const Color(
                                                                    0xff848484)),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    user_review[index]
                                                        ["content"],
                                                    style: GoogleFonts.hind(
                                                        color: const Color(
                                                          0xff848484,
                                                        ),
                                                        fontSize: 15),
                                                  )
                                                ]),
                                          )));
                                })))
                  ])),
              const SizedBox(
                height: 27,
              )
            ])));
  }
}
