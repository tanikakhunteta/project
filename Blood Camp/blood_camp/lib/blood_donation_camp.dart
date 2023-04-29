import 'package:blood_camp/blood_donation_camp1.dart';
import 'package:blood_camp/model/blood_camp_details_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/ui_utils.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
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
  String? startDate;
  String? lastDate;
  bool apiLoading = false;
  List<DateTime?> _endDate = [
    DateTime.now(),
  ];
  List<DateTime?> _startDate = [
    DateTime.now(),
  ];
  final List<DropDownValueModel> state = <DropDownValueModel>[
    DropDownValueModel(
        name: 'Andaman and Nicobar', value: 'Andaman and Nicobar'),
    DropDownValueModel(name: "Andhra Pradesh", value: "Andhra Pradesh"),
    DropDownValueModel(name: "Arunachal Pradesh", value: "Arunachal Pradesh"),
    DropDownValueModel(name: "Assam", value: "Assam"),
    DropDownValueModel(name: "Bihar", value: "Bihar"),
    DropDownValueModel(name: "Chandigarh", value: "Chandigarh"),
    DropDownValueModel(name: "Chhattisgarh", value: "Chhattisgarh"),
    DropDownValueModel(
        name: "Dadra and Nagar Haveli", value: "Dadra and Nagar Haveli"),
    DropDownValueModel(name: "Daman and Diu", value: "Daman and Diu"),
    DropDownValueModel(name: "Delhi", value: "Delhi"),
    DropDownValueModel(name: "Goa", value: "Goa"),
    DropDownValueModel(name: "Gujrat", value: "Gujrat"),
    DropDownValueModel(name: "Haryana", value: "Haryana"),
    DropDownValueModel(name: "Himachal Pradesh", value: "Himachal Pradesh"),
    DropDownValueModel(name: "Jammu and Kashmir", value: "Jammu and Kashmir"),
    DropDownValueModel(name: "Jharkhand", value: "Jharkhand"),
    DropDownValueModel(name: "Karnataka", value: "Karnataka"),
    DropDownValueModel(name: "Kerela", value: "Kerela"),
    DropDownValueModel(name: "Ladakh", value: "Ladakh"),
    DropDownValueModel(name: "Lakshadweep", value: "Lakshadweep"),
    DropDownValueModel(name: "Madhya Pradesh", value: "Madhya Pradesh"),
    DropDownValueModel(name: "Maharashtra", value: "Maharashtra"),
    DropDownValueModel(name: "Manipur", value: "Manipur"),
    DropDownValueModel(name: "Meghalaya", value: "Meghalaya"),
    DropDownValueModel(name: "Mizoram", value: "Mizoram"),
    DropDownValueModel(name: "Nagaland", value: "Nagaland"),
    DropDownValueModel(name: "Odisha", value: "Odisha"),
    DropDownValueModel(name: "Pondicherry", value: "Pondicherry"),
    DropDownValueModel(name: "Punjab", value: "Punjab"),
    DropDownValueModel(name: "Rajasthan", value: "Rajasthan"),
    DropDownValueModel(name: "Sikkim", value: "Sikkim"),
    DropDownValueModel(name: "Tamil Nadu", value: "Tamil Nadu"),
    DropDownValueModel(name: "Telangana", value: "Telangana"),
    DropDownValueModel(name: "Tripura", value: "Tripura"),
    DropDownValueModel(name: "Uttar Pradesh", value: "Uttar Pradesh"),
    DropDownValueModel(name: "West Bengal", value: "West Bengal"),
  ];
  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  TextEditingController districtController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  TextEditingController townController = TextEditingController();

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
        backgroundColor: Color(0xffBF222B),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              UiUtilsScreen.commonDropdown(
                styleLabel: GoogleFonts.roboto(
                    color: Color(0xFF706464),
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
                controller: stateController,
                dataList: state,
                lableValue: "Select State",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Select State";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: districtController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  labelStyle: GoogleFonts.roboto(
                      color: Color(0xFF706464),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  labelText: "Select District",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: pinCodeController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16),
                  labelStyle: GoogleFonts.roboto(
                      color: Color(0xFF706464),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  labelText: "Enter Pin Code",
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
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  showCalendarDatePicker2Dialog(
                    context: context,
                    config: CalendarDatePicker2WithActionButtonsConfig(
                        okButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBF222B)),
                        cancelButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBF222B))),
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
                      border: Border.all(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      startDate != null ? startDate! : "Select Start Date",
                      style: GoogleFonts.roboto(
                          color: Color(0xFF706464),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  showCalendarDatePicker2Dialog(
                    context: context,
                    config: CalendarDatePicker2WithActionButtonsConfig(
                        okButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBF222B)),
                        cancelButtonTextStyle: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffBF222B))),
                    dialogSize: const Size(325, 400),
                    value: _endDate,
                    borderRadius: BorderRadius.circular(15),
                  ).then((value) {
                    setState(() {
                      if (value != null) {
                        print(value);
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
                      border: Border.all(color: Color(0xFF706464)),
                      borderRadius: BorderRadius.circular(41)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      lastDate != null ? lastDate! : "Select Last Date",
                      style: GoogleFonts.roboto(
                          color: Color(0xFF706464),
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
                  districtController.text.isNotEmpty &&
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
                        district: districtController.text);
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
                } else
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        actions: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffBF222B)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK"))
                        ],
                        content: Text(
                          "Blood Camp Not Available",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              color: Color(0xffBF222B),
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      );
                    },
                  );
              }
            },
            child: apiLoading
                ? SizedBox(
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
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFBF222B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(69))),
          ),
        ),
      ),
    );
  }
}
