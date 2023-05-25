import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'contact_model.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> contactList = [
    {"name": "Peeyush", "contact": "6377743422"},
    {"name": "Komal", "contact": "9477743422"},
    {"name": "Tanika", "contact": "7877743422"},
    {"name": "Shivani", "contact": "7877743472"},
    {"name": "Peeyush", "contact": "7877743421"},
    {"name": "Tanika", "contact": "9477743422"},
    {"name": "Shivansh", "contact": "7877743422"},
    {"name": "Rahul", "contact": "7877743472"},
    {"name": "Rajat", "contact": "7877743421"},
    {"name": "Komal", "contact": "9477743422"},
    {"name": "Gaurav", "contact": "7877743422"},
    {"name": "Shivani", "contact": "7877743472"},
    {"name": "Peeyush", "contact": "7877743421"},
    {"name": "Trishita", "contact": "7877743922"},
    {"name": "Shivani", "contact": "7877543422"},
    {"name": "Aditya", "contact": "7077743422"},
    {"name": "Yashi", "contact": "7878843422"},
    {"name": "Peeyush", "contact": "7567743422"},
  ];
  List<ContactModel> contactModelList = [];
  TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    for (var element in contactList) {
      ContactModel contactModel = ContactModel.fromJson(element);
      contactModelList.add(contactModel);
    }
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search_sharp,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            // width: MediaQuery.of(context).size.width,
            // height: 800,
            child: ListView.builder(
              itemCount: contactModelList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          contactModelList[index].name ?? "",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          contactModelList[index].contact ?? "",
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (context) {
      //         return AlertDialog(
      //           content: TextField(
      //             controller: textEditingController,
      //             decoration: const InputDecoration(
      //               hintText: 'Add new task',
      //               border: OutlineInputBorder(),
      //             ),
      //             onChanged: (value) {
      //               print(textEditingController);
      //               setState(() {});
      //             },
      //           ),
      //           actions: <Widget>[
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 MaterialButton(
      //                   onPressed: () {
      //                     taskAdd() {
      //                       Padding(
      //                         padding: const EdgeInsets.only(
      //                             top: 15, left: 8, right: 8),
      //                         child: Container(
      //                           width: MediaQuery.of(context).size.width,
      //                           height: 65,
      //                           decoration: BoxDecoration(
      //                               color: Colors.amber[200],
      //                               borderRadius: BorderRadius.circular(8)),
      //                           child: Text(textEditingController.text),
      //                         ),
      //                       );
      //                     }
      //                   },
      //                   color: Colors.blue,
      //                   child: Text(
      //                     'ADD',
      //                     style: TextStyle(color: Colors.white),
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(8)),
      //                 ),
      //                 MaterialButton(
      //                   onPressed: () {},
      //                   color: Colors.blue,
      //                   child: Text(
      //                     'CANCEL',
      //                     style: TextStyle(color: Colors.white),
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(8)),
      //                 )
      //               ],
      //             )
      //           ],
      //         );
      //       },
      //     );
      //   },
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}