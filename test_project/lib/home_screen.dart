import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Objective",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 100, 136)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 0, 100, 136),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "To enhance my professional skills, capabilities and knowledge in an organization which recognizes the value of hard work and trusts me with responsibilities and challenges.",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 0, 100, 136),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Experience",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 100, 136)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/33ac52bc51d886321560b6b325df0ad9.jpg"))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "Graphic Designing",
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Freelancing",
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "2019-2021",
                            style: GoogleFonts.roboto(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "Video Editing",
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "GKMTIT",
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "2021-2022",
                            style: GoogleFonts.roboto(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/33ac52bc51d886321560b6b325df0ad9.jpg"))),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/33ac52bc51d886321560b6b325df0ad9.jpg"))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Text(
                            "Flutter App\nDevelopment",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "GKMTIT",
                            style: GoogleFonts.roboto(fontSize: 18),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "2022-2023",
                            style: GoogleFonts.roboto(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1. Knowledge of MVC & MVVM.",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "2. Knowledge of state management tools like provider."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("3. Proficient in Android application framework."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("4. Able to handle JSON requests."),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                        "5. Worked on firebase using mobile authentication, email and password auth."),
                    SizedBox(
                      height: 5,
                    ),
                    Text("6. Worked on rest api integration"),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Education",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 100, 136)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 0, 100, 136),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "2016-2019",
                      style: GoogleFonts.roboto(),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                        child: SizedBox(
                            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kanoria PG Mahila Mahavidhyalaya",
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Bsc. (Biology)",
                          style: GoogleFonts.roboto(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "73%",
                          style: GoogleFonts.roboto(),
                        ),
                      ],
                    )))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "2019-2021",
                      style: GoogleFonts.roboto(),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                        child: SizedBox(
                            child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kanoria PG Mahila Mahavidhyalaya",
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Msc. (Botany)",
                          style: GoogleFonts.roboto(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "74%",
                          style: GoogleFonts.roboto(),
                        ),
                      ],
                    )))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 0, 100, 136),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Skills",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 100, 136)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1. Good Communication Skills"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("2. Client Management"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("3. Quick Learner"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("4. Team Work"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("5. Time Management"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("6. Languages - Python, Dart"),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Reference",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 0, 100, 136)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 0, 100, 136),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tanvi Gupta - GKMTIT",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.w600),
                    ),
                    Text("HR"),
                    Text("tanvi@gkmtit.com"),
                    Text("8239961500")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
