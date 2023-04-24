import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/login.dart';

class CarousalScreen extends StatefulWidget {
  const CarousalScreen({super.key});

  @override
  State<CarousalScreen> createState() => _CarousalScreenState();
}

class _CarousalScreenState extends State<CarousalScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List carousal = [
    {
      "images": "assets/4906331-ai@2x.png",
      "text": "Live Session First",
      "body":
          "To find your destined 1Mantra.\nLet's watch some live ession first & know how to\ntake a consultation."
    },
    {
      "images": "assets/3531373-ai@2x.png",
      "text": "Enjoy your Speacial Offer!",
      "body":
          "Once you find the 1Mantra to consult.\nYou can have the first recharge offer : pay ₹1 and\nget ₹99 And the first special order price: ₹5/mins"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/background@2x.png"))),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ));
                              },
                              child: Text(
                                "Skip >>",
                                style: GoogleFonts.hind(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        CarouselSlider(
                            items: carousal
                                .map((item) => Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            carousal[_current]["images"],
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            carousal[_current]["text"],
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.hind(
                                              color: Colors.black,
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            carousal[_current]["body"],
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.hind(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
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
                              height: 420,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              aspectRatio: 1,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: carousal.asMap().entries.map((entry) {
                            return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  width: _current == entry.key ? 12 : 10,
                                  height: _current == entry.key ? 12 : 10,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 3.0),
                                  decoration: BoxDecoration(
                                      border: _current == entry.key
                                          ? Border.all(color: Colors.white)
                                          : Border.all(
                                              color: const Color(0xff59B8BE)),
                                      shape: BoxShape.circle,
                                      color: _current == entry.key
                                          ? const Color(0xff59B8BE)
                                          : Colors.white),
                                ));
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff59B8BE)),
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 41,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
