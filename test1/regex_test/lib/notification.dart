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
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    },
    {
      "image": "assets/Group 33@2x.png",
      "title": "Harry John",
      "subtitle":
          "It is a long established fact that a reader will be distracted\nby the readable content of a page when looking at its\nlayout."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff111111),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Notification",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xff111111)),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              subtitle: Text(
                notification[index]["subtitle"],
                style: GoogleFonts.hind(fontSize: 11, color: Color(0xff818181)),
              ),
              title: Text(
                notification[index]["title"],
                style:
                    GoogleFonts.hind(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              leading: Image.asset(notification[index]["image"]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 7),
    );
  }
}
