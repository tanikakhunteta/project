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
            indicatorColor: const Color(0xff000000),
            labelColor: Colors.black,
            unselectedLabelColor: const Color(0xff9D9D9D),
            unselectedLabelStyle: GoogleFonts.hind(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: const Color(0xff000000)),
            labelStyle: GoogleFonts.hind(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: const Color(0xff000000)),
            tabs: const [
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
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 280,
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15, horizontal: 13),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff707070)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Type a message",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 13, color: const Color(0xff707070))),
                  ),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff59B8BE)),
                  child: const Icon(
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
