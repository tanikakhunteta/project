import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClaimCashbackScreen extends StatefulWidget {
  const ClaimCashbackScreen({super.key});

  @override
  State<ClaimCashbackScreen> createState() => _ClaimCashbackScreenState();
}

class _ClaimCashbackScreenState extends State<ClaimCashbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff111111),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Offer & Cashback",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xff111111)),
        ),
        elevation: 1,
        backgroundColor: Color(0xffD3F0F2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 530,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Color(0xffD3F0F2)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    height: 152,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 112,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff59B8BE)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Buy 1mantra Plus",
                                    style: GoogleFonts.hind(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                      "Get upto 10-20% cashback\non every order",
                                      style: GoogleFonts.hind(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal)),
                                  Container(
                                    height: 25,
                                    width: 82,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      "Join Now",
                                      style: GoogleFonts.hind(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/offer@2x.png",
                              height: 150,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff59B8BE)),
                        child: Icon(
                          Icons.money,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Membership Saving Plan",
                        style: GoogleFonts.hind(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Talk More, Save More!",
                    style: GoogleFonts.hind(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Note: Save 10% on each & every order\nHow subscription plan help you to save money?",
                    style: GoogleFonts.hind(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Normal Price : ₹1,000/hr\nDiscount Price : ₹900/hr",
                    style: GoogleFonts.hind(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Normal Consultation frequency:\nIf you spent ₹1000 average in week you can save\nflat ₹400 in month",
                    style: GoogleFonts.hind(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(height: 44, width: 172),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Color(0xff59B8BE)),
                          onPressed: () {},
                          child: Text(
                            "Buy Budget Plan",
                            style: GoogleFonts.hind(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Earn by Completing Profile",
              style:
                  GoogleFonts.hind(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff59B8BE))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get ₹10 by completing your profile",
                      style: GoogleFonts.hind(fontSize: 16),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(height: 44, width: 200),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Color(0xff59B8BE)),
                            onPressed: () {},
                            child: Text(
                              "Complete your profile",
                              style: GoogleFonts.hind(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
