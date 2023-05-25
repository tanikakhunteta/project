import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test_project/details_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  static List details = [
    {"name": "Tanika", "mobile": "9529221066"},
    {"name": "Rahul", "mobile": "9529221056"},
    {"name": "Rajat", "mobile": "9529221046"},
    {"name": "Gaurav", "mobile": "9529221036"},
    {"name": "Gracy", "mobile": "9529221026"},
    {"name": "Tanika", "mobile": "9529221066"},
    {"name": "Rahul", "mobile": "9529221056"},
    {"name": "Govind", "mobile": "9529221016"},
    {"name": "Nikhil", "mobile": "9529221006"},
    {"name": "Yash", "mobile": "9529221005"},
    {"name": "Komal", "mobile": "9529221004"},
    {"name": "Nidhi", "mobile": "9529221003"},
    {"name": "Heena", "mobile": "9529221002"},
    {"name": "Chhaya", "mobile": "9529221001"},
    {"name": "Yash", "mobile": "9529221005"},
    {"name": "Komal", "mobile": "9529221004"},
    {"name": "Nidhi", "mobile": "9529221003"},
  ];

  List<DetailsModel> mainDetailsModel = [];
  List<DetailsModel> tempDetailsModel = [];

  @override
  void initState() {
    // details.forEach((element) {
    //   setState(() {
    //     mainDetailsModel.add(DetailsModel.fromJson(element));
    //   });
    // });
    // tempDetailsModel = mainDetailsModel;
    for (var element in details) {
      log(element.toString());
      DetailsModel tempdetailsModel = DetailsModel.fromJson(element);
      mainDetailsModel.add(tempdetailsModel);
    }
    tempDetailsModel = mainDetailsModel;
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: TextField(
      //       controller: nameController,
      //       decoration: InputDecoration(
      //         enabledBorder: OutlineInputBorder(),
      //       ),
      //       onChanged: (v) {
      //         setState(() {});
      //       },
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: TextField(
      //       controller: mobileController,
      //       decoration: InputDecoration(
      //         enabledBorder: OutlineInputBorder(),
      //       ),
      //       onChanged: (v) {
      //         setState(() {});
      //       },
      //     ),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: InkWell(
      //       onTap: () {
      //         detailsModel.add(DetailsModel.fromJson({
      //           'name': nameController.text,
      //           'mobile': mobileController.text
      //         }));
      //         setState(() {
      //           log(detailsModel.last.toJson().toString());
      //           log(detailsModel.length.toString());
      //         });
      //       },
      //       child: Container(
      //         height: 50,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //             color: Colors.black, borderRadius: BorderRadius.circular(10)),
      //         child: Center(
      //             child: Text(
      //           'List main add Karna',
      //           style: TextStyle(color: Colors.white),
      //         )),
      //       ),
      //     ),
      //   )
      // ]),
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                onChanged: (value) {
                  tempDetailsModel = [];
                  setState(() {
                    for (var element in mainDetailsModel) {
                      if (element.name!.toLowerCase().contains(value) ||
                          element.mobile!.toLowerCase().contains(value)) {
                        tempDetailsModel.add(element);
                      }
                    }
                  });
                  // log('temp ' + tempDetailsModel.length.toString());
                  // log('main ' + mainDetailsModel.length.toString());
                  // tempDetailsModel.retainWhere((element) => element.name!
                  //     .toLowerCase()
                  //     .contains(value.toLowerCase()));
                  log(tempDetailsModel.length.toString());
                },
                controller: searchController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          searchController.clear();
                        });
                      },
                    ))),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tempDetailsModel.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(tempDetailsModel[index].name!),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(tempDetailsModel[index].mobile!),
                    )
                  ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
