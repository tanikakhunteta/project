import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class StarWidget extends StatefulWidget {
  final String image;
  final String title;
  final String content;
  const StarWidget({super.key, required this.image, required this.title, required this.content});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
                                height: 79,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  widget.image))),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.title,
                                          style: GoogleFonts.hind(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRatingChanged: (v) {
                                              rating = v;
                                              setState(() {});
                                            },
                                            starCount: 5,
                                            rating: rating,
                                            size: 15.0,
                                            filledIconData: Icons.star,
                                            halfFilledIconData:
                                                Icons.star_border,
                                            color: Color(0xff59B8BE),
                                            borderColor: Color(0xff59B8BE),
                                            spacing: 0.0),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(widget.content,
                                            style: GoogleFonts.hind(
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xff848484)))
                                      ],
                                    )
                                  ],
                                ),
                              );;
  }
}