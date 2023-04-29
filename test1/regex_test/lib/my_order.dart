import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
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
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff111111),
            ),
          ),
          centerTitle: true,
          title: Text(
            "My Orders",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111111)),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: TabBar(
                indicatorColor: Color(0xff000000),
                labelColor: Colors.black,
                labelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
                unselectedLabelColor: Color(0xff9D9D9D),
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Refunded",
                  )
                ]),
            preferredSize: Size(MediaQuery.of(context).size.width, 50),
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Container(
                    height: 384,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Text(
                                "Completed",
                                style: GoogleFonts.hind(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)),
                              ),
                              Spacer(),
                              Text(
                                "ID: 62E2AA4565461726F645",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.phone,
                                size: 14,
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/NoPath - Copy (8)@2x.png"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Astro Swami G",
                                    style: GoogleFonts.hind(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000)),
                                  ),
                                  Text(
                                    "Online. Ready for consultation",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff9D9D9D)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 31,
                                width: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xff000000))),
                                child: Center(
                                  child: Text(
                                    "Consult",
                                    style: GoogleFonts.hind(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Time",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                              Text(
                                "2:10 PM 01/08/2022",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Duration",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                              Text(
                                "5 mins",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Charge",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                              Text(
                                "₹90",
                                style: GoogleFonts.hind(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff9D9D9D)),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total charge",
                                style: GoogleFonts.hind(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)),
                              ),
                              Text(
                                "₹90",
                                style: GoogleFonts.hind(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 31,
                                width: 112,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xff000000))),
                                child: Center(
                                  child: Text(
                                    "Have doubts?",
                                    style: GoogleFonts.hind(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 31,
                                width: 74,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xff000000))),
                                child: Center(
                                  child: Text(
                                    "Review",
                                    style: GoogleFonts.hind(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000)),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0xff59B8BE)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "00:00",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "5:00",
                                    style: GoogleFonts.hind(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Text("ongoing"),
          Text("completed"),
          Text("refunded")
        ]),
      ),
    );
  }
}
