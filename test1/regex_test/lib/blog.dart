import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  static List popular_blog = [
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    },
    {
      "image": "assets/blog_single2@2x.png",
      "title": "Does Your Kundli have a govt. job?",
      "name": "Astro Keshav M.",
      "date": "Fri, 16, 2022",
      "content":
          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
      "job": "Palmistry, Vastu, Numerology"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Blog",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff111111)),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: popular_blog.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        height: 279,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 134,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            popular_blog[index]["image"]),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                  height: 135,
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              popular_blog[index]["title"],
                                              style: GoogleFonts.hind(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff333333)),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  popular_blog[index]["name"],
                                                  style: GoogleFonts.hind(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff59B8BE)),
                                                ),
                                                Text(
                                                  popular_blog[index]["date"],
                                                  style: GoogleFonts.hind(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: const Color(
                                                          0xff59B8BE)),
                                                )
                                              ],
                                            ),
                                            Text(
                                              popular_blog[index]["job"],
                                              style: GoogleFonts.hind(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  color:
                                                      const Color(0xff848484)),
                                            ),
                                            Text(
                                              popular_blog[index]["content"],
                                              style: GoogleFonts.hind(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  color:
                                                      const Color(0xff848484)),
                                            )
                                          ])))
                            ])),
                  ),
                );
              })),
    );
  }
}
