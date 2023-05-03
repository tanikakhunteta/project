import 'dart:developer';

import 'package:blood_camp/blood_availability.dart';
import 'package:blood_camp/model/blood_avail_details_model.dart';
import 'package:blood_camp/model/district_details_model.dart';
import 'package:blood_camp/model/state_details_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/ui_utils.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodAvailabilitySearch extends StatefulWidget {
  const BloodAvailabilitySearch({super.key});

  @override
  State<BloodAvailabilitySearch> createState() =>
      _BloodAvailabilitySearchState();
}

class _BloodAvailabilitySearchState extends State<BloodAvailabilitySearch> {
  StateDetailsModel? stateDetailsModel;
  DistrictDetailsModel? districtDetailsModel;
  @override
  void initState() {
    ApiService.getStateDetails().then((value) {
      stateDetailsModel = value;
      setState(() {});
    });

    super.initState();
  }

  bool apiLoading = false;

  final List<DropDownValueModel> bloodGroup = <DropDownValueModel>[
    const DropDownValueModel(name: 'A+', value: 'A+'),
    const DropDownValueModel(name: "A-", value: "A-"),
    const DropDownValueModel(name: "B+", value: "B+"),
    const DropDownValueModel(name: "B-", value: "B-"),
    const DropDownValueModel(name: "AB+", value: "AB+"),
    const DropDownValueModel(name: "AB-", value: "AB-"),
    const DropDownValueModel(name: "O+", value: "O+"),
    const DropDownValueModel(name: "O-", value: "O-")
  ];

  SingleValueDropDownController bloodGroupController =
      SingleValueDropDownController();
  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  TextEditingController pinCodeController = TextEditingController();
  SingleValueDropDownController districtController =
      SingleValueDropDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blood Availability Search",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffBF222B),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Form(
                  child: Column(
                children: [
                  UiUtilsScreen.commonDropdown(
                      styleLabel: GoogleFonts.roboto(
                          color: const Color(0xFF706464),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Select State";
                        }
                        return null;
                      },
                      controller: stateController,
                      dataList:
                          stateDetailsModel?.stateDetailsData?.dropDownState ??
                              [],
                      lableValue: "Select State",
                      onChangedFN: (v) async {
                        log(v.value);
                        districtDetailsModel =
                            await ApiService.getDistrictDetails(v.value);
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 16,
                  ),

                  if (stateController.dropDownValue != null)
                    UiUtilsScreen.commonDropdown(
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF706464),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Select District";
                          }
                          return null;
                        },
                        controller: districtController,
                        dataList: districtDetailsModel == null
                            ? []
                            : districtDetailsModel!
                                .districtDetailsData!.dropDownDistrict,
                        lableValue: "Select District",
                        onChangedFN: (v) {
                          setState(() {});
                        }),
                  const SizedBox(
                    height: 16,
                  ),
                  if (districtController.dropDownValue != null)
                    TextFormField(
                      controller: pinCodeController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        labelStyle: GoogleFonts.roboto(
                            color: const Color(0xFF706464),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF706464)),
                            borderRadius: BorderRadius.circular(41)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF706464)),
                            borderRadius: BorderRadius.circular(41)),
                        labelText: "Enter Pin Code (Not Mandatory)",
                      ),
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  UiUtilsScreen.commonDropdown(
                      styleLabel: GoogleFonts.roboto(
                          color: const Color(0xFF706464),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      controller: bloodGroupController,
                      dataList: bloodGroup,
                      lableValue: "Select Blood Groups",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Select Blood Groups";
                        }
                        return null;
                      },
                      onChangedFN: (v) {
                        setState(() {});
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  // UiUtilsScreen.commonDropdown(
                  //     styleLabel: GoogleFonts.roboto(
                  //         color: Color(0xFF706464),
                  //         fontSize: 13,
                  //         fontWeight: FontWeight.w400),
                  //     controller: bloodComponentController,
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return "Select Blood Component";
                  //       }
                  //       return null;
                  //     },
                  //     lableValue: "Select Blood Component",
                  //     dataList: bloodComponent)
                ],
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 50, width: MediaQuery.of(context).size.width),
          child: ElevatedButton(
            onPressed: () async {
              if (stateController.dropDownValue != null &&
                  bloodGroupController.dropDownValue != null &&
                  districtController.dropDownValue != null) {
                setState(() {
                  apiLoading = true;
                });
                log(pinCodeController.text.toString());
                BloodAvailDetailsModel? bloodAvailDetailsModel =
                    await ApiService.getBloodAvailDetails(
                        state: stateController.dropDownValue!.name,
                        bloodGroup: bloodGroupController.dropDownValue!.name,
                        district: districtController.dropDownValue!.name,
                        pincode: pinCodeController.text);
                setState(() {
                  apiLoading = false;
                });
                if (bloodAvailDetailsModel != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BloodAvailabilityScreen(
                          bloodGroup: bloodGroupController.dropDownValue!.name,
                          bloodAvailDetailsModel: bloodAvailDetailsModel,
                        ),
                      ));
                } else {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffBF222B)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"))
                        ],
                        content: Text(
                          "Blood Not Available",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              color: const Color(0xffBF222B),
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                  );
                }
              } else {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actions: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffBF222B)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"))
                      ],
                      content: Text(
                        "Enter Required Fields",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: const Color(0xffBF222B),
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                    );
                  },
                );
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: stateController.dropDownValue != null &&
                        bloodGroupController.dropDownValue != null &&
                        districtController.dropDownValue != null
                    ? const Color(0xFFBF222B)
                    : Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
            child: apiLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Text(
                    'SEARCH',
                    style: GoogleFonts.roboto(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
          ),
        ),
      ),
    );
  }
}
