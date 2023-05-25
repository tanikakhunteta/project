import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

// {
//   'time':'',
//   'message':''
// }

class _HelpScreenState extends State<HelpScreen> {
  List<AstrologerAssistantModel> astrologerAssistant = [];
  List<ChatModel> customerSupport = [];
  TextEditingController astrologerController = TextEditingController();
  TextEditingController chatController = TextEditingController();
  AutoScrollController controller = AutoScrollController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            "Help & Support",
            style: GoogleFonts.hind(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff111111)),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          bottom: TabBar(
              indicatorColor: const Color(0xff000000),
              labelColor: Colors.black,
              unselectedLabelColor: const Color(0xff9D9D9D),
              unselectedLabelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff000000)),
              labelStyle: GoogleFonts.hind(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
              tabs: const [
                Tab(
                  text: "Customer Support",
                ),
                Tab(
                  text: "Astrologer's Assistant",
                )
              ]),
        ),
        body: TabBarView(children: [
          Stack(
            children: [
              ListView.builder(
                itemCount: customerSupport.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return AutoScrollTag(
                    key: Key(index.toString()),
                    index: index,
                    controller: controller,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: (index == (customerSupport.length - 1))
                              ? 80.0
                              : 0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(children: [
                          if (index % 2 != 0) const Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8),
                            child: Card(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 234),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffE1FAFB)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, top: 6, right: 8),
                                        child: Text(
                                          customerSupport[index].message ?? '',
                                          style: GoogleFonts.hind(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 12, right: 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              DateFormat('hh:mm a').format(
                                                  DateTime.parse(
                                                      customerSupport[index]
                                                          .time!)),
                                              style: GoogleFonts.hind(
                                                  fontSize: 13,
                                                  color: Color(0xff929292)),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.check,
                                                size: 18,
                                                color: Color(0xff929292),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          if (index % 2 == 0) const Expanded(child: SizedBox()),
                        ]),
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 280,
                          child: TextFormField(
                            controller: chatController,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 13),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(8)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xff707070)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Type a message",
                                hintStyle: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: const Color(0xff707070))),
                            onChanged: (v) {
                              setState(() {});
                            },
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (chatController.text.isNotEmpty) {
                              customerSupport.add(ChatModel.fromJson({
                                'time': DateTime.now().toString(),
                                'message': chatController.text
                              }));
                              controller
                                  .scrollToIndex(customerSupport.length - 1);
                              setState(() {});
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff59B8BE)),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              ListView.builder(
                itemCount: astrologerAssistant.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      if (index % 2 != 0) Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 236),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffE1FAFB)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 12, top: 6, right: 11, bottom: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  astrologerAssistant[index].message ?? "",
                                  style: GoogleFonts.hind(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    Text(
                                        DateFormat("hh mm a").format(DateTime.parse(
                                            astrologerAssistant[index]
                                                .time
                                                .toString())),
                                        style: GoogleFonts.hind(
                                            fontSize: 13, color:const Color(0xff929292))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 280,
                            child: TextFormField(
                              controller: astrologerController,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 13),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(8)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xff707070)),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: "Type a message",
                                  hintStyle: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      color: const Color(0xff707070))),
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (astrologerController.text.isNotEmpty) {
                                astrologerAssistant.add(
                                    AstrologerAssistantModel.fromJson({
                                  "time": DateTime.now().toString(),
                                  "message": astrologerController.text
                                }));
                                setState(() {});
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff59B8BE)),
                              child: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}

class ChatModel {
  String? time;
  String? message;

  ChatModel({this.time, this.message});

  ChatModel.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['message'] = message;
    return data;
  }
}

class AstrologerAssistantModel {
  String? time;
  String? message;

  AstrologerAssistantModel({this.time, this.message});

  AstrologerAssistantModel.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['message'] = this.message;
    return data;
  }
}
