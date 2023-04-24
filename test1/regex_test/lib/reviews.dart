import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/starwidget.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  var rating = 0.0;
  List review = [
    {
      "image": "assets/1@2x.png",
      "title": "Rohan Sharma",
      "subtitle": "Good information given by him"
    },
    {
      "image": "assets/2@2x.png",
      "title": "Mohan Sharma",
      "subtitle": "Thanks Guru Ji"
    },
    {
      "image": "assets/3@2x.png",
      "title": "Rajesh Sharma",
      "subtitle": "Very Good Astrologer"
    },
    {
      "image": "assets/4@2x.png",
      "title": "Deepak Sharma",
      "subtitle": "Good Thanks"
    },
    {"image": "assets/5@2x.png", "title": "Raju Sharma", "subtitle": "Great"},
    {
      "image": "assets/6@2x.png",
      "title": "Mohon Sharma",
      "subtitle": "Thanks Guru Ji"
    },
    {
      "image": "assets/1@2x.png",
      "title": "Rajesh Sharma",
      "subtitle": "Very Good Astrologer"
    },
    {
      "image": "assets/2@2x.png",
      "title": "Deepak Sharma",
      "subtitle": "Good Thanks"
    },
    {"image": "assets/3@2x.png", "title": "Raju Sharma", "subtitle": "Great"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Reviews",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff111111)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return StarWidget(
                content: review[index]["subtitle"],
                image: review[index]["image"],
                title: review[index]["title"],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: review.length),
      ),
    );
  }
}
