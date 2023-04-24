import 'package:flutter/material.dart';

class ss extends StatelessWidget {
  const ss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffcb202d),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
            ),
            Text(
              "Zomato",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "100% Green Deliveries",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(
              width: 170,
              child: Row(children: [
                Expanded(
                    child: Divider(
                  color: Colors.white,
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "In India",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.white,
                ))
              ]),
            )
          ],
        ));
  }
}
