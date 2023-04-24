import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
          "About Us",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xff111111)),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "FAQ's",
              style:
                  GoogleFonts.hind(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Terms and Conditions",
              style:
                  GoogleFonts.hind(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Privacy Policy",
              style:
                  GoogleFonts.hind(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "About Us",
              style:
                  GoogleFonts.hind(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
              style: GoogleFonts.hind(fontSize: 16, color: Color(0xff707070)),
            ),
            SizedBox(
              height: 20,
            )
          ]),
        ),
      ),
    );
  }
}
