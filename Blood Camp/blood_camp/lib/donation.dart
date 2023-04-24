import 'package:blood_camp/all_sreen.dart';
import 'package:blood_camp/blood_availability.dart';
import 'package:blood_camp/blood_donation.dart';

import 'package:blood_camp/ui_utils.dart';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

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

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  TextEditingController districtController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  TextEditingController townController = TextEditingController();

  TextEditingController dateController = TextEditingController();
  TextEditingController name2Controller = TextEditingController();
  TextEditingController mobile2Controller = TextEditingController();
  TextEditingController email2Controller = TextEditingController();
  SingleValueDropDownController state2Controller =
      SingleValueDropDownController();
  TextEditingController district2Controller = TextEditingController();
  TextEditingController pinCode2Controller = TextEditingController();

  TextEditingController town2Controller = TextEditingController();

  TextEditingController date2Controller = TextEditingController();

  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: key,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Donation",
            style:
                GoogleFonts.roboto(fontSize: 19, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Color(0xffBF222B),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllScreen(),
                    ));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                  indicatorColor: Color(0xffBF222B),
                  dividerColor: Color(0xffEDEDED),
                  controller: _tabController,
                  labelStyle: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  labelColor: Color(0xff473D3D),
                  tabs: [
                    Tab(
                      text: "Looking For Blood",
                    ),
                    Tab(
                      text: "Donate Blood",
                    )
                  ]),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who need\nblood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobileController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
                                ),
                              ),
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
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select District",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: pinCodeController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: townController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BloodAvailabilityScreen(),
                                      ));
                                },
                                child: Text(
                                  'CONTINUE',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who wants\nto donate blood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: name2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobile2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: email2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              UiUtilsScreen.commonDropdown(
                                styleLabel: GoogleFonts.roboto(
                                    color: Color(0xFF706464),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                                controller: state2Controller,
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
                                controller: district2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select District",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: pinCode2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: town2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: date2Controller,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BloodDonationScreen(),
                                      ));
                                },
                                child: Text(
                                  'SEARCH',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
