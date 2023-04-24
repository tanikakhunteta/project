import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            "Help & Support",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111111)),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        body: TabBar(
            indicatorColor: Color(0xff000000),
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xff9D9D9D),
            unselectedLabelStyle: GoogleFonts.hind(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000)),
            labelStyle: GoogleFonts.hind(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000)),
            tabs: [
              Tab(
                text: "Customer Support",
              ),
              Tab(
                text: "Astrologer's Assistant",
              )
            ]),
        bottomNavigationBar: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 284,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 13),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff707070)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Type a message",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 13, color: Color(0xff707070))),
                  ),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff59B8BE)),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
