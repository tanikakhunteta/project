import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/radio_list_widget.dart';

class UiUtilsScreen {
  static Future filterBottomModal(BuildContext context, List language,
      List speciality, List consultationMethod, List skill, List segment) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: false,
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height,
          maxHeight: MediaQuery.of(context).size.height),
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
            initialChildSize: 1, //set this as you want
            maxChildSize: 1, //set this as you want
            minChildSize: 1, //set this as you want
            expand: true,
            builder: (context, scrollController) {
              return ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Filters",
                              style: GoogleFonts.hind(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.close))
                          ],
                        ),
                        const Divider(),
                        Text("Language",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 8,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: language.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 110 / 54,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xff555555))),
                              child: Center(
                                  child: Text(
                                language[index],
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff555555)),
                              )),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Speciality",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 8,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: speciality.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 110 / 54,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xff555555))),
                              child: Center(
                                  child: Text(
                                speciality[index],
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff555555)),
                              )),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Consultation Method",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 8,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: consultationMethod.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 110 / 54,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xff555555))),
                              child: Center(
                                  child: Text(
                                consultationMethod[index],
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff555555)),
                              )),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Price",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 12,
                        ),
                        Text("₹8~₹99",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 22,
                        ),
                        Text("Skill",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 8,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: skill.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 110 / 54,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xff555555))),
                              child: Center(
                                  child: Text(
                                skill[index],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff555555)),
                              )),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text("Segment",
                            style: GoogleFonts.hind(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 8,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: segment.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 110 / 54,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: const Color(0xff555555))),
                              child: Center(
                                  child: Text(
                                segment[index],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.hind(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff555555)),
                              )),
                            );
                          },
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Clear All",
                              style: GoogleFonts.hind(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            ConstrainedBox(
                              constraints: const BoxConstraints.tightFor(
                                  height: 43, width: 173),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      backgroundColor: const Color(0xff59B8BE)),
                                  onPressed: () {},
                                  child: Text("Apply",
                                      style: GoogleFonts.hind(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ))),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }

  static Future menuBottomModel(
    BuildContext context,
    List sortBy,
  ) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return RadioListWidget(
          sortBy: sortBy,
        );
      },
    );
  }
}
