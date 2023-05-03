import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notification = [
    {
      "image": "assets/Ellipse 16.png",
      "heading": "we want to thank all of our donors.",
      "content": "Send By NGO",
      "time": "2 Hours Ago"
    },
    {
      "image": "assets/Ellipse 16.png",
      "heading": "we want to thank all of our donors.",
      "content": "Send By NGO",
      "time": "2 Days Ago"
    },
    {
      "image": "assets/Ellipse 16.png",
      "heading": "we want to thank all of our donors.",
      "content": "Send By NGO",
      "time": "4 Days Ago"
    },
    {
      "image": "assets/Ellipse 16.png",
      "heading": "we want to thank all of our donors.",
      "content": "Send By NGO",
      "time": "10 Days Ago"
    },
    {
      "image": "assets/Ellipse 16.png",
      "heading": "we want to thank all of our donors.",
      "content": "Send By NGO",
      "time": "1 Month Ago"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Notification",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xffBF222B),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: notification.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    height: 72,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        notification[index]["image"]))),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                notification[index]["heading"],
                                style: GoogleFonts.roboto(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff473D3D)),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              SizedBox(
                                width: 290,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_outward,
                                      color: Color(0xff706464),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      notification[index]["content"],
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff706464)),
                                    ),
                                    const Spacer(),
                                    Text(
                                      notification[index]["time"],
                                      style: GoogleFonts.roboto(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff706464)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
