import 'package:blood_camp/blood_donation_camp1.dart';
import 'package:blood_camp/model/blood_camp_details_model.dart';
import 'package:blood_camp/model/district_details_model.dart';
import 'package:blood_camp/model/state_details_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/ui_utils.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BloodDonationCampScreen extends StatefulWidget {
  const BloodDonationCampScreen({super.key});

  @override
  State<BloodDonationCampScreen> createState() =>
      _BloodDonationCampScreenState();
}

class _BloodDonationCampScreenState extends State<BloodDonationCampScreen> {
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

  String? startDate;
  String? lastDate;
  bool apiLoading = false;
  List<DateTime?> _endDate = [
    DateTime.now(),
  ];
  List<DateTime?> _startDate = [
    DateTime.now(),
  ];

  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  SingleValueDropDownController districtController =
      SingleValueDropDownController();
  TextEditingController pinCodeController = TextEditingController();

  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blood Donation Camp",
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              UiUtilsScreen.commonDropdown(
                  styleLabel: GoogleFonts.roboto(
                      color: const Color(0xFF706464),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  controller: stateController,
                  dataList:
                      stateDetailsModel?.stateDetailsData?.dropDownState ?? [],
                  lableValue: "Select State",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Select State";
                    }
                    return null;
                  },
                  onChangedFN: (v) async {
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
                    controller: districtController,
                    dataList: districtDetailsModel
                            ?.districtDetailsData?.dropDownDistrict ??
                        [],
                    lableValue: "Select District",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Select District";
                      }
                      return null;
                    },
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
                        borderSide: const BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF706464)),
                        borderRadius: BorderRadius.circular(41)),
                    labelText: "Enter Pin Code (Not Mandatory)",
                  ),
                ),
              // SizedBox(
              //   height: 16,
              // ),
              // TextFormField(
              //   controller: townController,
              //   decoration: InputDecoration(
              //     contentPadding: EdgeInsets.all(16),
              //     hintStyle: GoogleFonts.roboto(
              //         color: Color(0xFF706464),
              //         fontSize: 13,
              //         fontWeight: FontWeight.w400),
              //     focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Color(0xFF706464)),
              //         borderRadius: BorderRadius.circular(41)),
              //     enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(color: Color(0xFF706464)),
              //         borderRadius: BorderRadius.circular(41)),
              //     hintText: "Enter Town Name",
              //   ),
              // ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  showCalendarDatePicker2Dialog(
                    context: context,
                    config: CalendarDatePicker2WithActionButtonsConfig(
                        okButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffBF222B)),
                        cancelButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffBF222B))),
                    dialogSize: const Size(325, 400),
                    value: _startDate,
                    borderRadius: BorderRadius.circular(15),
                  ).then((value) {
                    setState(() {
                      if (value != null) {
                        print(value);
                        _startDate = value;
                        startDate =
                            DateFormat('MMMM dd, yyyy').format(_startDate[0]!);
                      }
                    });
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      startDate != null ? startDate! : "Select Start Date",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFF706464),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  showCalendarDatePicker2Dialog(
                    context: context,
                    config: CalendarDatePicker2WithActionButtonsConfig(
                        okButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffBF222B)),
                        cancelButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffBF222B))),
                    dialogSize: const Size(325, 400),
                    value: _endDate,
                    borderRadius: BorderRadius.circular(15),
                  ).then((value) {
                    setState(() {
                      if (value != null) {
                        
                        _endDate = value;
                        lastDate =
                            DateFormat('MMMM dd, yyyy').format(_endDate[0]!);
                      }
                    });
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      lastDate != null
                          ? lastDate!
                          : "Select Last Date (Not Mandatory)",
                      style: GoogleFonts.roboto(
                          color: const Color(0xFF706464),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(
              height: 50, width: MediaQuery.of(context).size.width),
          child: ElevatedButton(
            onPressed: () async {
              if (stateController.dropDownValue != null &&
                  districtController.dropDownValue != null &&
                  startDate != null) {
                setState(() {
                  apiLoading = true;
                });
                BloodCampDetailsModel? bloodCampDetailsModel =
                    await ApiService.getBloodCampDetails(
                        pincode: pinCodeController.text,
                        state: stateController.dropDownValue!.name,
                        startDate: _startDate[0].toString(),
                        endDate:
                            lastDate != null ? _endDate[0].toString() : null,
                        district: districtController.dropDownValue!.name);
                setState(() {
                  apiLoading = false;
                });
                if (bloodCampDetailsModel != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BloodDonationCamp1(
                            bloodCampDetailsModel: bloodCampDetailsModel),
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
                          "Blood Camp Not Available",
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
                        districtController.dropDownValue != null &&
                        startDate != null
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
