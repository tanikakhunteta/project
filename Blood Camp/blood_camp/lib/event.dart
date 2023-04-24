import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Event",
          style: GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              height: 187,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/Rectangle 129.png"))),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "We are thrilled to host this event",
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "we want to thank all of our donors for their generous contribution. Your blood donations can save lives, and\nwe are grateful for your selfless act of kindness.\n\nDid you know that every two seconds, someone in the United States needs blood? Your donation could make a difference in someone's life, and we are excited to have you as a part of our team.\n\nDonating blood is safe, easy, and convenient. All of our equipment is sterile, and our trained staff will make sure that you are comfortable throughout the process.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5C5050)),
            )
          ],
        ),
      ),
    );
  }
}
