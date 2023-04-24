import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/Login.dart';
import 'package:gkmt_institute/Signup.dart';

class CarousalScreen extends StatefulWidget {
  const CarousalScreen({super.key});

  @override
  State<CarousalScreen> createState() => _CarState();
}

class _CarState extends State<CarousalScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 60,
        ),
        CarouselSlider(
            items: images
                .map((item) => Center(
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            text[_current],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                    ))
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              viewportFraction: 1.0,
              height: 500,
              autoPlay: true,
              enlargeCenterPage: false,
              aspectRatio: 1,
            )),
        SizedBox(
          height: 40,
          // child: Align(
          //     alignment: Alignment.topRight,
          //     child: Padding(
          //         padding: const EdgeInsets.only(top: 50, right: 30),
          //         child: ElevatedButton(
          //           onPressed: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                   builder: (context) => Login(),
          //                 ));
          //           },
          //           child:
          //               Text(_current == (images.length - 1) ? "Next" : "Skip"),
          //           style: ElevatedButton.styleFrom(
          //               elevation: 0, backgroundColor: Colors.red),
          //         )))
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 15 : 10,
                  height: _current == entry.key ? 15 : 10,
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _current == entry.key ? Colors.red : Colors.red[100]),
                ));
          }).toList(),
        ),
        SizedBox(
          height: 40,
        ),
        ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 300, height: 50),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ));
            },
            child: Text(
              "Getting Started",
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        )
      ]),
    ));
  }
}
