import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/recharge_coupon.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List wallet = [
    {
      "show_container": true,
      "money": "₹1",
      "gift": "Get ₹100",
      'color': Color(0xff2F5BD0)
    },
    {
      "show_container": true,
      "money": "₹200",
      "gift": null,
      'color': Color(0xffD78E00)
    },
    {
      "show_container": false,
      "money": "₹500",
      "gift": "Gift ₹50",
      'color': Colors.yellow
    },
    {
      "show_container": false,
      "money": "₹800",
      "gift": "Gift ₹100",
      'color': Colors.yellow
    },
    {
      "show_container": false,
      "money": "₹1000",
      "gift": "Gift ₹200",
      'color': Colors.yellow
    },
    {
      "show_container": false,
      "money": "₹2000",
      "gift": "Gift ₹500",
      'color': Colors.yellow
    },
    {
      "show_container": false,
      "money": "₹3000",
      "gift": "Gift ₹750",
      'color': Colors.yellow,
    },
    {
      "show_container": false,
      "money": "₹5000",
      "gift": "Gift ₹1250",
      'color': Colors.yellow
    },
  ];
  List payment = [
    {
      "type": "assets/Group 1632@2x.png",
      "name": "UPI",
      "icon": "assets/google-pay@2x.png",
      "child_icons": [
        "assets/google-pay@2x.png",
        "assets/phonepe-logo@2x.png",
        "assets/upi-icon@2x.png",
        "assets/WhatsApp@2x.png",
      ]
    },
    {
      "type": "assets/Group 1633@2x.png",
      "name": "Paytm Wallet",
      "icon": "assets/google-pay@2x.png",
      "child_icons": [
        "assets/paytm-size@2x.png",
      ]
    },
    {
      "type": "assets/Group 1634@2x.png",
      "name": "Credit/Debit Card",
      "icon": "assets/google-pay@2x.png",
      "child_icons": ["assets/rupay@2x.png", "assets/mastercard@2x.png"]
    },
    {
      "type": "assets/Group 1635@2x.png",
      "name": "Paytm Postpaid",
      "icon": "assets/google-pay@2x.png",
      "child_icons": ["assets/paytmpostpaid@2x.png"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff111111),
            ),
          ),
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Wallet Balance: ",
                    style: GoogleFonts.hind(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff111111))),
                TextSpan(
                    text: "₹90",
                    style: GoogleFonts.hind(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff59B8BE)))
              ],
            ),
          )),
      body: ListView(
        children: [
          Container(
              height: 440,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 15,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 95,
                      width: 107,
                      decoration: BoxDecoration(
                          color: const Color(0xffF0FBFC),
                          borderRadius: BorderRadius.circular(6)),
                      child: Stack(
                        children: [
                          if (wallet[index]["show_container"])
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 20,
                                  width: 84,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(6),
                                        bottomRight: Radius.circular(6)),
                                    color: wallet[index]['color'],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "New User Only",
                                      style: GoogleFonts.hind(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                )),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  wallet[index]["money"],
                                  style: GoogleFonts.hind(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                if (wallet[index]["gift"] != null)
                                  Text(
                                    wallet[index]["gift"],
                                    style: GoogleFonts.hind(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Coupon",
                        style: GoogleFonts.hind(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RechargeCouponScreen(),
                                ));
                          },
                          child: const Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        hintStyle: GoogleFonts.hind(
                            fontSize: 13, color: const Color(0xff848484)),
                        hintText: "Please enter a valid code",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.money),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Amount",
                        style: GoogleFonts.hind(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 33),
                        hintStyle: GoogleFonts.hind(
                            fontSize: 13, color: const Color(0xff848484)),
                        hintText: "Enter Amount",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 440,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 39,
                                  width: 27,
                                  child: Image.asset(payment[index]["type"])),
                              const SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    payment[index]["name"],
                                    style: GoogleFonts.hind(
                                        fontSize: 18,
                                        color: const Color(0xff848484)),
                                  ),
                                  SizedBox(
                                    height: 18,
                                    width: 304,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount:
                                          payment[index]["child_icons"].length,
                                      itemBuilder: (context, childIndex) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Image.asset(
                                            payment[index]["child_icons"]
                                                [childIndex],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 4),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ConstrainedBox(
                      constraints: BoxConstraints.tightFor(
                          height: 50, width: MediaQuery.of(context).size.width),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: const Color(0xff59B8BE)),
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24)),
                                    child: Container(
                                      height: 334,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Payment Detail",
                                              style: GoogleFonts.hind(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const Divider(
                                              thickness: 1,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Subtotal",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "₹200",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "GST @ 18%",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "₹36",
                                                  style: GoogleFonts.hind(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Your first recharge is tax free now!",
                                              style: GoogleFonts.hind(
                                                  fontSize: 13,
                                                  color:
                                                      const Color(0xff848484)),
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Total",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  "₹200",
                                                  style: GoogleFonts.hind(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            const Divider(
                                              thickness: 1,
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            ConstrainedBox(
                                              constraints:
                                                  BoxConstraints.tightFor(
                                                      height: 50,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      backgroundColor:
                                                          const Color(
                                                              0xff59B8BE)),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Proceed to Pay",
                                                    style: GoogleFonts.hind(
                                                        fontSize: 17),
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                              },
                            );
                          },
                          child: Text(
                            "Proceed to Pay",
                            style: GoogleFonts.hind(fontSize: 16),
                          ))),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          )
        ],
      ),
    );
  }
}
