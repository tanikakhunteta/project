import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
            "My Orders",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111111)),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            TabBar(
                indicatorColor: Color(0xff000000),
                labelColor: Colors.black,
                labelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
                unselectedLabelColor: Color(0xff9D9D9D),
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Refunded",
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
