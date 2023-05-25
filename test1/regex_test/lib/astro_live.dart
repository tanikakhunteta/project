import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class AstroLiveScreen extends StatefulWidget {
  const AstroLiveScreen({super.key});

  @override
  State<AstroLiveScreen> createState() => _AstroLiveScreenState();
}

class _AstroLiveScreenState extends State<AstroLiveScreen> {
  bool visibility = false;
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(
        "assets/pexels-stijn-dijkstra-13008655-2160x3240-25fps.mp4")
      ..initialize().then((value) {
        _controller.play();
        _controller.setLooping(true);

        setState(() {});
      });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: VideoPlayer(_controller),
          // )
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xff59B8BE),
            onPressed: () {
              visibility = !visibility;
              setState(() {});
            },
            child: const Icon(
              Icons.phone_in_talk_outlined,
              size: 32,
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 129,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.43)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Icon(
                            Icons.chat_bubble,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Say hi",
                          style: GoogleFonts.hind(
                              fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.43)),
                    child: const Icon(
                      Icons.forward,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.43)),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.43)),
                    child: const Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 39,
                    width: 39,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.43)),
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent),
              onTap: () {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 44,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 47,
                        width: 162,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.43),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/NoPath - Copy (12)@2x.png"))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Astro Dinesh",
                                  style: GoogleFonts.hind(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/Icon awesome-fire@2x.png",
                                      height: 10,
                                    ),
                                    Text(" 148",
                                        style: GoogleFonts.hind(
                                            fontSize: 12, color: Colors.white))
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 63, 63, 63)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 98,
                        child: Stack(children: [
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white,
                                    strokeAlign: BorderSide.strokeAlignOutside),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage("assets/5@2x.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage("assets/5@2x.png"))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 46),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage("assets/5@2x.png"))),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage("assets/5@2x.png"))),
                            ),
                          ),
                        ]),
                      ),
                      const Spacer(),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 170, 170, 170)),
                        child: const Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 170, 170, 170)),
                      child: const Icon(
                        Icons.hourglass_bottom,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Visibility(
                      visible: visibility,
                      child: SizedBox(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                launchUrl(Uri.parse("tel: 9529221066"));
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xff59B8BE)
                                        .withOpacity(.70)),
                                child: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color(0xff59B8BE).withOpacity(.70)),
                              child: const Icon(
                                Icons.video_call,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff59B8BE).withOpacity(.70)),
                              child: const Icon(
                                Icons.message,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage("assets/5@2x.png"))),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Raghu Sharma",
                              style: GoogleFonts.hind(
                                  fontSize: 12, color: Color(0xffD7D7D7)),
                            ),
                            Text(
                              "Join the Live",
                              style: GoogleFonts.hind(
                                  fontSize: 14, color: Colors.white),
                            ),
                            Text(
                              "Neha",
                              style: GoogleFonts.hind(
                                  fontSize: 12, color: Colors.white),
                            ),
                            Text(
                              "Neha mandloi 7/11/95\nAngel guidance for today",
                              style: GoogleFonts.hind(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage("assets/5@2x.png"))),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Priyanka Shahi",
                              style: GoogleFonts.hind(
                                  fontSize: 12, color: const Color(0xffD7D7D7)),
                            ),
                            Text(
                              "Hello ji",
                              style: GoogleFonts.hind(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),

                  // SizedBox(
                  //   height: 341,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
