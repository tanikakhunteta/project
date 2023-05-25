import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/reviews.dart';
import 'package:regex_test/starwidget.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class AstrologerProfile extends StatefulWidget {
  const AstrologerProfile({super.key});

  @override
  State<AstrologerProfile> createState() => _AstrologerProfileState();
}

class _AstrologerProfileState extends State<AstrologerProfile> {
  var rating = 0.0;
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
      "color": Color.fromARGB(255, 219, 219, 219),
      "icon": Icons.videogame_asset_outlined,
      "name": "Vastu"
    },
    {"color": Colors.blue, "icon": Icons.face, "name": "Face Reading"},
    {
      "color": Color.fromARGB(255, 186, 206, 187),
      "icon": Icons.handshake_rounded,
      "name": "Kundli"
    },
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
  List gallery = [
    "assets/gallery-1@2x.png",
    "assets/gallery-2@2x.png",
    "assets/gallery-3@2x.png",
    "assets/gallery-1@2x.png",
    "assets/gallery-2@2x.png",
    "assets/gallery-3@2x.png"
  ];
  List reviews = [
    {
      "image": "assets/2@2x.png",
      "title": "Rohan Sharma",
      "content": "Good information given by him"
    },
    {
      "image": "assets/3@2x.png",
      "title": "Mohon Sharma",
      "content": "Thanks Guru Ji"
    },
    {
      "image": "assets/4@2x.png",
      "title": "Rajesh Sharma",
      "content": "Very Good Astrologer"
    },
    {
      "image": "assets/5@2x.png",
      "title": "Deepak Sharma",
      "content": "Good Thanks"
    },
    {"image": "assets/6@2x.png", "title": "Raju Sharma", "content": "Great"}
  ];
  static List popular_blog = [
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Astrologers Profile",
            style: GoogleFonts.hind(
                fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 199,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xffE1FAFB),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 18),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 77,
                            width: 77,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/NoPath - Copy (4)@2x.png"))),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Astro Keshav M.",
                                style: GoogleFonts.hind(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Hindi, English",
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xff848484)),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff59B8BE),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                        child: Text(
                                      "Follow",
                                      style: GoogleFonts.hind(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 17,
                                  ),
                                  Container(
                                      height: 32,
                                      width: 135,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 19,
                                            height: 19,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black),
                                            child: const Center(
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            "assets/record@2x.png",
                                          ),
                                          Text(
                                            "44",
                                            style: GoogleFonts.hind(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 31),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 57,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(45)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "5",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Rating",
                                    style: GoogleFonts.hind(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xff848484)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Color(0xffCDCDCD),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "10+",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Exp(years)",
                                    style: GoogleFonts.hind(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xff848484)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Color(0xffCDCDCD),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "4.5K",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Followers",
                                    style: GoogleFonts.hind(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xff848484)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Color(0xffCDCDCD),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "15.5K",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Orders",
                                    style: GoogleFonts.hind(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xff848484)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: const Color(0xffE1FAFB),
                          shape: BoxShape.rectangle),
                      labelColor: const Color(0xff59B8BE),
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: "Info",
                        ),
                        Tab(
                          text: "Posts",
                        )
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      Container(
                        height: 39,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Availability Time"),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24)),
                                  child: Container(
                                    height: 271,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Book Appointment",
                                          style: GoogleFonts.hind(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/NoPath - Copy (8)@2x.png"))),
                                              ),
                                              const SizedBox(
                                                width: 24,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Astro Keshav M.",
                                                    style: GoogleFonts.hind(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    "Exp: 10+ year",
                                                    style: GoogleFonts.hind(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: const Color(
                                                            0xff848484)),
                                                  ),
                                                  Text(
                                                    "Skills: Astrology, Kundli",
                                                    style: GoogleFonts.hind(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: const Color(
                                                            0xff848484)),
                                                  ),
                                                  Text(
                                                    "Language: Hindi, English",
                                                    style: GoogleFonts.hind(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: const Color(
                                                            0xff848484)),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Divider(),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: ConstrainedBox(
                                            constraints:
                                                BoxConstraints.tightFor(
                                                    height: 50,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    backgroundColor:
                                                        const Color(
                                                            0xff59B8BE)),
                                                onPressed: () {},
                                                child: Text(
                                                  "Book Appointment",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 17),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                            },
                          );
                        },
                        child: Container(
                          height: 39,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xffDFF7F8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "Book Appointment",
                            style: GoogleFonts.hind(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 59,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: const Color(0xffDFF7F8),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.thumb_up,
                                color: Color(0xff59B8BE),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "98%",
                                style: GoogleFonts.hind(
                                    fontSize: 19, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              const SizedBox(
                                height: 40,
                                child: VerticalDivider(
                                  thickness: 2,
                                  color: Color(0xffCDCDCD),
                                ),
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              Text(
                                "Out of all users who were surveyed. 98%\nof them are satisfied with Astro Ssachin S's\nprediction.s",
                                style: GoogleFonts.hind(
                                    fontSize: 13, fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 126,
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
                                                          shape:
                                                              BoxShape.circle,
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
                              ])),
                      SizedBox(
                          height: 126,
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
                                              padding: const EdgeInsets.only(
                                                  right: 27),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        height: 45,
                                                        width: 45,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: services[
                                                                        index]
                                                                    ["color"]),
                                                        child: Icon(
                                                          services[index]
                                                              ["icon"],
                                                          color: Colors.white,
                                                        )),
                                                    Text(
                                                        services[index]["name"],
                                                        style: GoogleFonts.hind(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500))
                                                  ]));
                                        }))
                              ])),
                      ExpansionTile(
                        trailing: Container(
                          width: 0,
                        ),
                        title: Row(
                          children: [
                            Text(
                              "Bio",
                              style: GoogleFonts.hind(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 23,
                              width: 23,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDFF7F8)),
                              child: const Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        children: [
                          Text(
                            'Astrology can be defined in many ways but we would\nwant to explain this as science which helps people in\nguiding them through their good/bad times of life and\nthis is done based on various & different planetary\npositions and calculations.\nWe live in an era where we are digitalized to the level,\neverything of our need is available at the tip of our hands\nlike health, food, clothing, etc.\n1 Mantra app is a one stop destination for all the astro\nseekers. We are trying to help people show the right\ndirection in life through astrology and occult sciences',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.hind(fontSize: 15),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text('Read More',
                                style: GoogleFonts.hind(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff59B8BE),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      SizedBox(
                        height: 126,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gallery",
                              style: GoogleFonts.hind(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: gallery.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(gallery[index])),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      height: 86,
                                      width: 95,
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        height: 610,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reviews",
                              style: GoogleFonts.hind(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SmoothStarRating(
                                          allowHalfRating: false,
                                          onRatingChanged: (v) {
                                            rating = v;
                                            setState(() {});
                                          },
                                          starCount: 5,
                                          rating: rating,
                                          size: 40.0,
                                          filledIconData: Icons.star,
                                          halfFilledIconData: Icons.star_border,
                                          color: Color(0xff59B8BE),
                                          borderColor: Color(0xff59B8BE),
                                          spacing: 0.0),
                                      Text(
                                        "Based on 900 Reviews",
                                        style: GoogleFonts.hind(
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "4.58",
                                    style: GoogleFonts.hind(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return StarWidget(
                                    content: reviews[index]["content"],
                                    image: reviews[index]["image"],
                                    title: reviews[index]["title"],
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                                itemCount: reviews.length),
                            const Divider(),
                            Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ReviewScreen(),
                                        ));
                                  },
                                  child: Text(
                                    "All View Reviews",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        color: const Color(0xff59B8BE),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 132,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 46,
                                  width: 108,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff59B8BE),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Call",
                                        style: GoogleFonts.hind(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "₹5/min",
                                        style: GoogleFonts.hind(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 46,
                                  width: 108,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff59B8BE),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Chat",
                                        style: GoogleFonts.hind(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "₹5/min",
                                        style: GoogleFonts.hind(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 46,
                                  width: 108,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff59B8BE),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Video",
                                        style: GoogleFonts.hind(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "₹5/min",
                                        style: GoogleFonts.hind(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(24),
                                            topRight: Radius.circular(24)),
                                        child: Container(
                                          height: 339,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                "Book a long session at discount!",
                                                style: GoogleFonts.hind(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              const Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 19,
                                                    ),
                                                    Container(
                                                      height: 76,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff59B8BE)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "15% off",
                                                              style: GoogleFonts.hind(
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            Text(
                                                              "15 min session @ ₹ 699.0 ₹ 999",
                                                              style: GoogleFonts.hind(
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Container(
                                                      height: 149,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff59B8BE)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "30% off",
                                                              style: GoogleFonts.hind(
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            Text(
                                                              "30 min session @ ₹ 699.0 ₹ 999",
                                                              style: GoogleFonts.hind(
                                                                  fontSize: 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            const SizedBox(
                                                              height: 9,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                ConstrainedBox(
                                                                  constraints: const BoxConstraints
                                                                          .tightFor(
                                                                      height:
                                                                          52,
                                                                      width:
                                                                          153),
                                                                  child: ElevatedButton(
                                                                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), backgroundColor: const Color(0xff59B8BE)),
                                                                      onPressed: () {},
                                                                      child: Column(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              const Icon(
                                                                                Icons.chat_bubble,
                                                                                size: 17,
                                                                              ),
                                                                              const SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text(
                                                                                "Chat",
                                                                                style: GoogleFonts.hind(fontSize: 18, fontWeight: FontWeight.w600),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                              "Wait-time - 5m",
                                                                              style: GoogleFonts.hind(
                                                                                fontSize: 14,
                                                                              ))
                                                                        ],
                                                                      )),
                                                                ),
                                                                ConstrainedBox(
                                                                  constraints: const BoxConstraints
                                                                          .tightFor(
                                                                      height:
                                                                          52,
                                                                      width:
                                                                          153),
                                                                  child: ElevatedButton(
                                                                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), backgroundColor: const Color(0xffBFBDBD)),
                                                                      onPressed: () {},
                                                                      child: Column(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              const Icon(
                                                                                Icons.phone,
                                                                                size: 17,
                                                                                color: Colors.black,
                                                                              ),
                                                                              const SizedBox(
                                                                                width: 5,
                                                                              ),
                                                                              Text(
                                                                                "Call",
                                                                                style: GoogleFonts.hind(
                                                                                  fontSize: 18,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  color: Colors.black,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                              "Currently Offline",
                                                                              style: GoogleFonts.hind(
                                                                                fontSize: 14,
                                                                                color: Colors.black,
                                                                              ))
                                                                        ],
                                                                      )),
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                                  },
                                );
                              },
                              child: Container(
                                height: 39,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: const Color(0xff59B8BE),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Book a long session at discount!",
                                    style: GoogleFonts.hind(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(
                      children: [
                        Text(
                          "Posts",
                          style: GoogleFonts.hind(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                      height: 270,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 134,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          topRight:
                                                              Radius.circular(
                                                                  10)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          popular_blog[index]
                                                              ["image"]),
                                                      fit: BoxFit.cover)),
                                            ),
                                            SizedBox(
                                                height: 135,
                                                child: Padding(
                                                    padding: const EdgeInsets
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
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                popular_blog[
                                                                        index]
                                                                    ["job"],
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    color: const Color(
                                                                        0xff848484)),
                                                              ),
                                                              Text(
                                                                popular_blog[
                                                                        index]
                                                                    ["date"],
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
                                                            popular_blog[index]
                                                                ["title"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: const Color(
                                                                    0xff333333)),
                                                          ),
                                                          Text(
                                                            popular_blog[index]
                                                                ["content"],
                                                            style: GoogleFonts.hind(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: const Color(
                                                                    0xff848484)),
                                                          )
                                                        ])))
                                          ])),
                                ),
                              );
                            }),
                        SizedBox(
                          height: 132,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 46,
                                    width: 108,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff59B8BE),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Call",
                                          style: GoogleFonts.hind(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "₹5/min",
                                          style: GoogleFonts.hind(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 46,
                                    width: 108,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff59B8BE),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Chat",
                                          style: GoogleFonts.hind(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "₹5/min",
                                          style: GoogleFonts.hind(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 46,
                                    width: 108,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff59B8BE),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Video",
                                          style: GoogleFonts.hind(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "₹5/min",
                                          style: GoogleFonts.hind(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(24),
                                              topRight: Radius.circular(24)),
                                          child: Container(
                                            height: 339,
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  "Book a long session at discount!",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const Divider(
                                                  thickness: 1,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15),
                                                  child: Column(
                                                    children: [
                                                      const SizedBox(
                                                        height: 19,
                                                      ),
                                                      Container(
                                                        height: 76,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xff59B8BE)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "15% off",
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        19,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text(
                                                                "15 min session @ ₹ 699.0 ₹ 999",
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        19,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      Container(
                                                        height: 149,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xff59B8BE)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "30% off",
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        19,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text(
                                                                "30 min session @ ₹ 699.0 ₹ 999",
                                                                style: GoogleFonts.hind(
                                                                    fontSize:
                                                                        19,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              const SizedBox(
                                                                height: 9,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  ConstrainedBox(
                                                                    constraints: const BoxConstraints
                                                                            .tightFor(
                                                                        height:
                                                                            52,
                                                                        width:
                                                                            153),
                                                                    child: ElevatedButton(
                                                                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), backgroundColor: const Color(0xff59B8BE)),
                                                                        onPressed: () {},
                                                                        child: Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                const Icon(
                                                                                  Icons.chat_bubble,
                                                                                  size: 17,
                                                                                ),
                                                                                const SizedBox(
                                                                                  width: 5,
                                                                                ),
                                                                                Text(
                                                                                  "Chat",
                                                                                  style: GoogleFonts.hind(fontSize: 18, fontWeight: FontWeight.w600),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Text("Wait-time - 5m",
                                                                                style: GoogleFonts.hind(
                                                                                  fontSize: 14,
                                                                                ))
                                                                          ],
                                                                        )),
                                                                  ),
                                                                  ConstrainedBox(
                                                                    constraints: const BoxConstraints
                                                                            .tightFor(
                                                                        height:
                                                                            52,
                                                                        width:
                                                                            153),
                                                                    child: ElevatedButton(
                                                                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)), backgroundColor: const Color(0xffBFBDBD)),
                                                                        onPressed: () {},
                                                                        child: Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                const Icon(
                                                                                  Icons.phone,
                                                                                  size: 17,
                                                                                  color: Colors.black,
                                                                                ),
                                                                                const SizedBox(
                                                                                  width: 5,
                                                                                ),
                                                                                Text(
                                                                                  "Call",
                                                                                  style: GoogleFonts.hind(
                                                                                    fontSize: 18,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Text("Currently Offline",
                                                                                style: GoogleFonts.hind(
                                                                                  fontSize: 14,
                                                                                  color: Colors.black,
                                                                                ))
                                                                          ],
                                                                        )),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ));
                                    },
                                  );
                                },
                                child: Container(
                                  height: 39,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff59B8BE),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Book a long session at discount!",
                                      style: GoogleFonts.hind(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
