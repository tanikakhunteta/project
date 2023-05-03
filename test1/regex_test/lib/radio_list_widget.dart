import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioListWidget extends StatefulWidget {
  final List sortBy;

  const RadioListWidget({super.key, required this.sortBy});

  @override
  State<RadioListWidget> createState() => _RadioListWidgetState();
}

class _RadioListWidgetState extends State<RadioListWidget> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      child: Container(
        color: Colors.white,
        height: 502,
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sort By",
                  style: GoogleFonts.hind(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const Align(
                    alignment: Alignment.centerRight, child: Icon(Icons.close))
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.sortBy.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    RadioListTile(
                      activeColor: Color(0xff59B8BE),
                      title: Text(
                        widget.sortBy[index],
                        style: GoogleFonts.hind(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff333333)),
                      ),
                      value: index,
                      groupValue: groupValue,
                      onChanged: (index) {
                        setState(() {
                          groupValue = index!;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
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
                    constraints:
                        BoxConstraints.tightFor(height: 43, width: 173),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Color(0xff59B8BE)),
                        onPressed: () {},
                        child: Text("Apply",
                            style: GoogleFonts.hind(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
