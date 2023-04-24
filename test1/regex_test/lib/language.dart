import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/homepage.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool? ischecked = false;
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
              "Select Language",
              style: GoogleFonts.hind(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff111111)),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/select-language@2x.png",
                    height: 249,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [BoxShadow()]),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff59B8BE),
                        shape: CircleBorder(
                            side: BorderSide(color: Color(0xff59B8BE))),
                        value: ischecked,
                        tristate: false,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value;
                          });
                        },
                      ),
                      Text(
                        "English",
                        style: GoogleFonts.hind(fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [BoxShadow()]),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff59B8BE),
                        shape: CircleBorder(
                            side: BorderSide(color: Color(0xff59B8BE))),
                        value: ischecked,
                        tristate: false,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value;
                          });
                        },
                      ),
                      Text(
                        "Hindi",
                        style: GoogleFonts.hind(fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 54,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 50, width: MediaQuery.of(context).size.width),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xff59B8BE)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageScreen(),
                            ));
                      },
                      child: Text(
                        "Continue",
                        style: GoogleFonts.hind(fontSize: 17),
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
