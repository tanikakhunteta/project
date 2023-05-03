import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatIntakeForm extends StatefulWidget {
  const ChatIntakeForm({super.key});

  @override
  State<ChatIntakeForm> createState() => _ChatIntakeFormState();
}

class _ChatIntakeFormState extends State<ChatIntakeForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
        centerTitle: true,
        title: Text(
          "Intake Form",
          style: GoogleFonts.hind(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "Name",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Enter your name",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Gender",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 82,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffDBDBDB))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Female",
                        style: GoogleFonts.hind(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.female,
                        size: 29,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 82,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffDBDBDB))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Male",
                        style: GoogleFonts.hind(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.male,
                        size: 29,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Birth Date",
                      style: GoogleFonts.hind(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 11, horizontal: 11),
                          hintStyle: GoogleFonts.hind(
                              fontSize: 16, color: Color(0xff898989)),
                          hintText: "DD/MM/YY",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xffDBDBDB))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xffDBDBDB))),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: GoogleFonts.hind(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 11, horizontal: 11),
                          hintStyle: GoogleFonts.hind(
                              fontSize: 16, color: Color(0xff898989)),
                          hintText: "12:30",
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xffDBDBDB))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xffDBDBDB))),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Born Location",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Search Cities",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Occupation",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Occupation",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Marital Status",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Marriage",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Area of Concern/Services",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Area of concern",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Attachment",
              style: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 9,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 50, horizontal: 11),
                hintStyle:
                    GoogleFonts.hind(fontSize: 16, color: Color(0xff898989)),
                hintText: "Upload File",
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffDBDBDB))),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    height: 50, width: MediaQuery.of(context).size.width),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xff59B8BE)),
                    onPressed: () {},
                    child: Text(
                      "Consult Now",
                      style: GoogleFonts.hind(fontSize: 16),
                    ))),
            SizedBox(
              height: 27,
            )
          ],
        ),
      ),
    );
  }
}
