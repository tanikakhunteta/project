import 'package:flutter/material.dart';

class LOG extends StatefulWidget {
  const LOG({super.key});

  @override
  State<LOG> createState() => _LOGState();
}

class _LOGState extends State<LOG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.asset('webdevelopment.jpg')],
      ),
    );
  }
}
