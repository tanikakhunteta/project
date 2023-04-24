import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
          "Contact Us",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff111111)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              "Mobile Number",
              style:
                  GoogleFonts.hind(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your name",
                  hintStyle:
                      GoogleFonts.hind(fontSize: 16, color: Color(0xff898989))),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Email",
              style:
                  GoogleFonts.hind(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Email",
                  hintStyle:
                      GoogleFonts.hind(fontSize: 16, color: Color(0xff898989))),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Whatsapp Number",
              style:
                  GoogleFonts.hind(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Whatsapp Number",
                  hintStyle:
                      GoogleFonts.hind(fontSize: 16, color: Color(0xff898989))),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Description",
              style:
                  GoogleFonts.hind(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 81, left: 11),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Description",
                  hintStyle:
                      GoogleFonts.hind(fontSize: 16, color: Color(0xff898989))),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                height: 50, width: MediaQuery.of(context).size.width),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xff59B8BE)),
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: GoogleFonts.hind(fontSize: 16),
                ))),
      ),
    );
  }
}
