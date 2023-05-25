import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  
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
                    "My Projects",
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
              SizedBox(
                height: 230,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/pexels-rahul-sapra-13009643.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 0, 100, 136)),
                        child: Center(
                            child: Text(
                          "Blood Camp",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 230,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/pexels-rahul-sapra-13009643.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 0, 100, 136)),
                        child: Center(
                            child: Text(
                          "1 Mantra",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
