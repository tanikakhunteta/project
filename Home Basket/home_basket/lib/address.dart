import 'dart:math';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_basket/api_services.dart';
import 'package:home_basket/jploft_model.dart';
import 'package:home_basket/ui_utils.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Add Address",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          actions: [
            TextButton(
                onPressed: () async {},
                child: Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Color(0xff0680D6)),
                ))
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset("assets/images/Mask Group 5.png")),
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/images/Mask Group 6.png")),
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 36,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: TabBar(
                            unselectedLabelColor: Colors.black,
                            indicatorPadding: const EdgeInsets.all(3),
                            indicator: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color(0xff0E5299),
                                  Color(0xff0680D6),
                                  Color(0xff2FC2E3),
                                  Color(0xff35C856)
                                ]),
                                borderRadius: BorderRadius.circular(6)),
                            labelColor: Colors.white,
                            tabs: const [
                              Tab(
                                text: "Home",
                              ),
                              Tab(
                                text: "Work",
                              ),
                              Tab(
                                text: "Other",
                              )
                            ]),
                      ),
                      Expanded(
                        child: TabBarView(children: [
                          ListView(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 1,
                                child: UiUtilsScreen.textFormField(
                                    hintText: "Full Name"),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 1,
                                child: UiUtilsScreen.textFormField(
                                    contentPadding:
                                        const EdgeInsets.symmetric(vertical: 0),
                                    prefix: const CountryCodePicker(
                                      onChanged: print,
                                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                      initialSelection: 'IT',
                                      favorite: ['+39', 'FR'],
                                      // optional. Shows only country name and flag
                                      showCountryOnly: false,
                                      // optional. Shows only country name and flag when popup is closed.
                                      showOnlyCountryWhenClosed: false,
                                      // optional. aligns the flag and the Text left
                                      alignLeft: false,
                                    ),
                                    hintText: "Mobile Number"),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 1,
                                child: UiUtilsScreen.textFormField(
                                    suffixIcon: Icon(Icons.my_location_sharp),
                                    hintText: "Your Location"),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                elevation: 1,
                                child: UiUtilsScreen.textFormField(
                                    hintText: "Landmark"),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              UiUtilsScreen.gradientContainer(context,
                                  text: "Save")
                            ],
                          ),
                          Text("2"),
                          Text("3")
                        ]),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
