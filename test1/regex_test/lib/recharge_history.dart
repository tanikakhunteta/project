import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:regex_test/payment.dart';

class RechargeHistoryScreen extends StatefulWidget {
  const RechargeHistoryScreen({super.key});

  @override
  State<RechargeHistoryScreen> createState() => _RechargeHistoryScreenState();
}

class _RechargeHistoryScreenState extends State<RechargeHistoryScreen> {
  List rechargeHistory = [
    {
      "sent": "Sent to 1mantra",
      "amount": "₹200.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Successfully"
    },
    {
      "sent": "Sent to 1mantra",
      "amount": "₹150.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Pending"
    },
    {
      "sent": "Sent to 1mantra",
      "amount": "₹100.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Successfully"
    },
    {
      "sent": "Sent to 1mantra",
      "amount": "₹100.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Failed"
    },
    {
      "sent": "Sent to 1mantra",
      "amount": "₹200.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Successfully"
    },
    {
      "sent": "Sent to 1mantra",
      "amount": "₹300.0",
      "date": "07-07-2022 12:40 PM",
      "status": "Status",
      "type": "Successfully"
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
          "Recharge History",
          style: GoogleFonts.hind(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: const Color(0xff111111)),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 21,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total\nBalance",
                  style: GoogleFonts.hind(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "₹10.0",
                  style: GoogleFonts.hind(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff59B8BE)),
                ),
                SizedBox(
                    height: 48,
                    child: VerticalDivider(
                      color: Colors.black,
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),
                        ));
                  },
                  child: Container(
                    height: 40,
                    width: 146,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff59B8BE)),
                    child: Center(
                      child: Text(
                        "Recharge Now",
                        style: GoogleFonts.hind(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider();
              },
              shrinkWrap: true,
              itemCount: rechargeHistory.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 58,
                          width: 58,
                          child: Stack(
                            children: [
                              Container(
                                height: 58,
                                width: 58,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffD3F0F2)),
                              ),
                              Center(
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff59B8BE)),
                                  child: Center(
                                      child: Text(
                                    "₹",
                                    style: GoogleFonts.hind(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              rechargeHistory[index]["sent"],
                              style: GoogleFonts.hind(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)),
                            ),
                            Text(
                              rechargeHistory[index]["date"],
                              style: GoogleFonts.hind(
                                  fontSize: 13, color: Color(0xff848484)),
                            ),
                            Text(
                              rechargeHistory[index]["status"],
                              style: GoogleFonts.hind(
                                  fontSize: 13, color: Color(0xff848484)),
                            )
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              rechargeHistory[index]["amount"],
                              style: GoogleFonts.hind(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xff59B8BE)),
                            ),
                            Builder(builder: (context) {
                              if (rechargeHistory[index]["type"] ==
                                  "Successfully") {
                                return (Text(
                                  rechargeHistory[index]["type"],
                                  style: GoogleFonts.hind(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff128200)),
                                ));
                              } else if (rechargeHistory[index]["type"] ==
                                  "Pending") {
                                return (Text(
                                  rechargeHistory[index]["type"],
                                  style: GoogleFonts.hind(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff00A8FF)),
                                ));
                              } else {
                                return (Text(
                                  rechargeHistory[index]["type"],
                                  style: GoogleFonts.hind(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffFF0000)),
                                ));
                              }
                            })
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
