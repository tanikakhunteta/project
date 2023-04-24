import 'package:flutter/material.dart';

class gkmt extends StatefulWidget {
  const gkmt({super.key});

  @override
  State<gkmt> createState() => _gkmtState();
}

class _gkmtState extends State<gkmt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d3856),
      body: Center(child: Image.asset("assets/images/LOGO-WHITE.png")),
    );
  }
}
