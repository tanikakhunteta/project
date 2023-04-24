import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:regex_test/category.dart';

import 'package:regex_test/home.dart';
import 'package:regex_test/live.dart';
import 'package:regex_test/booking.dart';
import 'package:regex_test/chat.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> { 
  int selectedIndex = 0;
  static List<Widget> screens = const [
    HomeScreen(),
    CategoryScreen(),
    LiveScreen(),
    ChatScreen(),
    BookingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingNavbar(
        elevation: 40,
        selectedItemColor: Color(0xff59B8BE),
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: (int val) {
          setState(() {
            selectedIndex = val;
          });
          //returns tab id which is user tapped
        },
        currentIndex: selectedIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home_outlined, title: 'Home'),
          FloatingNavbarItem(icon: Icons.category_outlined, title: 'Category'),
          FloatingNavbarItem(icon: Icons.live_tv_outlined, title: 'Live'),
          FloatingNavbarItem(
              icon: Icons.chat_bubble_outline_rounded, title: 'Chat'),
          FloatingNavbarItem(icon: Icons.book_online_outlined, title: 'Booking')
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     onTap: (value) {
      //       setState(() {
      //         selectedIndex = value;
      //       });
      //     },
      //     currentIndex: selectedIndex,
      //     selectedLabelStyle: const TextStyle(color: Colors.blue),
      //     selectedItemColor: Color(0xff59B8BE),
      //     unselectedItemColor: Colors.grey,
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home_outlined), label: "Home"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.category_outlined), label: "Category"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.live_tv_outlined), label: "Live"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.chat_bubble_outline_rounded), label: "Chat"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.book_online_outlined), label: "Booking")
      //     ]),
      body: Column(
        children: [
          Expanded(child: screens[selectedIndex]),
        ],
      ),
    );
  }
}
