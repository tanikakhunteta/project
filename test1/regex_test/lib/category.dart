import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<CategoryScreen> {
  // List<UserDetails> userData = [];
  // @override
  // void initState() {
  //   NetworkApiCalls().getUserDetails().then((value) {
  //     setState(() {
  //       userData = value;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
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
            "Offer & Cashback",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111111)),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const TabBar(
                  indicatorColor: Color(0xff59B8BE),
                  labelColor: Colors.black,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(
                      text: 'Tab 1',
                    ),
                    Tab(
                      text: 'Tab 2',
                    ),
                    Tab(
                      text: 'Tab 3',
                    )
                  ]),
              const SizedBox(
                height: 23,
              ),
              Text(
                'Astrology can be defined in many ways but we would\nwant to explain this as science which helps people in\nguiding them through their good/bad times of life\nand this is done based on various & different\nplanetary positions and calculations through the …',
                style: GoogleFonts.hind(fontSize: 15),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'See More',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Color(0xff59B8BE)),
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Card(
                child: Container(
                  height: 373,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 158,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/Group 1626@2x.png'),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/ddd-removebg-preview@2x.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Personal Life',
                          style: GoogleFonts.hind(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff59B8BE)),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Astrology can be defined in many ways but we\nwould want to explain this as science which\nhelps people in guiding them through their\ngood/bad times of life and this is one based on\nvarious & different planetary positions and\ncalculations.',
                          style: GoogleFonts.hind(
                              fontSize: 15, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        //     body: GridView.builder(
        //   itemCount: userData.length,
        //   shrinkWrap: true,
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,),
        //   itemBuilder: (context, index) {
        //     return Text("${userData[index].firstName}");
        //   },
        // )
      ),
    );
  }
}
