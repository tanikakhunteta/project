import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<BookingScreen> {
  List images = [
    "assets/drop-1004250__480.jpg",
    "assets/fashion-3080644_1280 (2).jpg",
    "assets/fashion-3080644_1280.jpg",
    "assets/lake-2608425__480.jpg",
    "assets/milky-way-5295160__480.jpg",
    "assets/sunset-1373171_1280.jpg",
    "assets/drop-1004250__480.jpg",
    "assets/fashion-3080644_1280 (2).jpg",
    "assets/fashion-3080644_1280.jpg",
    "assets/lake-2608425__480.jpg",
    "assets/milky-way-5295160__480.jpg",
    "assets/drop-1004250__480.jpg",
    "assets/fashion-3080644_1280 (2).jpg",
    "assets/fashion-3080644_1280.jpg",
    "assets/lake-2608425__480.jpg",
    "assets/milky-way-5295160__480.jpg",
    "assets/sunset-1373171_1280.jpg",
    "assets/drop-1004250__480.jpg",
    "assets/fashion-3080644_1280 (2).jpg",
    "assets/fashion-3080644_1280.jpg",
    "assets/lake-2608425__480.jpg",
    "assets/milky-way-5295160__480.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blue,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/fashion-3080644_1280.jpg"),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            color: Colors.white),
                      ),
                      const Text(
                        "13\nPosts",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "3\nFollowers",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "5\nFollowing",
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Maria Lopez"),
                  const SizedBox(
                    height: 50,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        height: 40, width: MediaQuery.of(context).size.width),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Profile Setting")),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 100 / 140,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover)),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
