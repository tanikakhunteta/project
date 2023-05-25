import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/home_screen.dart';
import 'package:test_project/profile.dart';
import 'package:test_project/project.dart';
import 'package:test_project/ui_utils.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  int selectedIndex = 0;
  List screens = [HomeScreen(), ProjectScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: UiUtilsScreen.drawer(),
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            centerTitle: true,
            title: Text("My Resume",
                style: GoogleFonts.roboto(color: Colors.black)),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              items:const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.insert_page_break_sharp),
                    label: "Projects"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile")
              ]),
          body: screens[selectedIndex]),
    );
  }
}
