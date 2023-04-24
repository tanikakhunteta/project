import 'package:flutter/material.dart';
import 'package:gkmt_institute/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController();
  
    super.initState();
  }

  List text = [
    "Front End Development",
    "Business Development Executive",
    "WordPress",
    "UI UX Design",
    "Social Media Marketing",
    "Digital Marketing",
    "Graphic Design"
  ];

  List images = [
    "assets/images/Developer activity-pana.png",
    "assets/images/Development focus-pana.png",
    "assets/images/Interaction Design-pana.png",
    "assets/images/Mobile UX-pana.png",
    "assets/images/Social media-pana.png",
    "assets/images/Subscriptions-pana.png",
    "assets/images/Website Creator-pana.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView.builder(
          controller: controller,
          onPageChanged: (value) {
            setState(() {});
          },
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Center(
                  child: (Image.asset(
                    images[index],
                  )),
                ),
                Text(
                  text[index],
                  style: TextStyle(color: Colors.black),
                )
              ],
            );
          }),
      Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                  height: 25,
                  width: 120,
                  child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: (Container(
                                height: controller!.page!.round() == index
                                    ? 20
                                    : 10,
                                width: controller!.page!.round() == index
                                    ? 20
                                    : 10,
                                decoration: BoxDecoration(
                                    color: (controller!.page!.round()) == index
                                        ? Colors.yellow
                                        : Colors.black,
                                    shape: BoxShape.circle))));
                      })))),
      Align(
          alignment: Alignment.bottomRight,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 206, 72, 14),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            controller!.page!.round() == (images.length - 1)
                                ? "Next"
                                : "Skip",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )))))),
    ]));
  }
}
