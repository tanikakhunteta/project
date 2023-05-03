import 'package:blood_camp/all_sreen.dart';

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
    const DropDownValueModel(
        name: 'Andaman and Nicobar', value: 'Andaman and Nicobar'),
    const DropDownValueModel(name: "Andhra Pradesh", value: "Andhra Pradesh"),
    const DropDownValueModel(
        name: "Arunachal Pradesh", value: "Arunachal Pradesh"),
    const DropDownValueModel(name: "Assam", value: "Assam"),
    const DropDownValueModel(name: "Bihar", value: "Bihar"),
    const DropDownValueModel(name: "Chandigarh", value: "Chandigarh"),
    const DropDownValueModel(name: "Chhattisgarh", value: "Chhattisgarh"),
    const DropDownValueModel(
        name: "Dadra and Nagar Haveli", value: "Dadra and Nagar Haveli"),
    const DropDownValueModel(name: "Daman and Diu", value: "Daman and Diu"),
    const DropDownValueModel(name: "Delhi", value: "Delhi"),
    const DropDownValueModel(name: "Goa", value: "Goa"),
    const DropDownValueModel(name: "Gujrat", value: "Gujrat"),
    const DropDownValueModel(name: "Haryana", value: "Haryana"),
    const DropDownValueModel(
        name: "Himachal Pradesh", value: "Himachal Pradesh"),
    const DropDownValueModel(
        name: "Jammu and Kashmir", value: "Jammu and Kashmir"),
    const DropDownValueModel(name: "Jharkhand", value: "Jharkhand"),
    const DropDownValueModel(name: "Karnataka", value: "Karnataka"),
    const DropDownValueModel(name: "Kerela", value: "Kerela"),
    const DropDownValueModel(name: "Ladakh", value: "Ladakh"),
    const DropDownValueModel(name: "Lakshadweep", value: "Lakshadweep"),
    const DropDownValueModel(name: "Madhya Pradesh", value: "Madhya Pradesh"),
    const DropDownValueModel(name: "Maharashtra", value: "Maharashtra"),
    const DropDownValueModel(name: "Manipur", value: "Manipur"),
    const DropDownValueModel(name: "Meghalaya", value: "Meghalaya"),
    const DropDownValueModel(name: "Mizoram", value: "Mizoram"),
    const DropDownValueModel(name: "Nagaland", value: "Nagaland"),
    const DropDownValueModel(name: "Odisha", value: "Odisha"),
    const DropDownValueModel(name: "Pondicherry", value: "Pondicherry"),
    const DropDownValueModel(name: "Punjab", value: "Punjab"),
    const DropDownValueModel(name: "Rajasthan", value: "Rajasthan"),
    const DropDownValueModel(name: "Sikkim", value: "Sikkim"),
    const DropDownValueModel(name: "Tamil Nadu", value: "Tamil Nadu"),
    const DropDownValueModel(name: "Telangana", value: "Telangana"),
    const DropDownValueModel(name: "Tripura", value: "Tripura"),
    const DropDownValueModel(name: "Uttar Pradesh", value: "Uttar Pradesh"),
    const DropDownValueModel(name: "West Bengal", value: "West Bengal"),
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
          backgroundColor: const Color(0xffBF222B),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllScreen(),
                    ));
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                  indicatorColor: const Color(0xffBF222B),
                  dividerColor: const Color(0xffEDEDED),
                  controller: _tabController,
                  labelStyle: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  labelColor: const Color(0xff473D3D),
                  tabs: const [
                    Tab(
                      text: "Looking For Blood",
                    ),
                    Tab(
                      text: "Donate Blood",
                    )
                  ]),
              SizedBox(
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
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who need\nblood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobileController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
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
                                  controller: stateController,
                                  dataList: state,
                                  lableValue: "Select State",
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Select State";
                                    }
                                    return null;
                                  },
                                  onChangedFN: (v) {
                                    setState(() {});
                                  }),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: districtController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select District",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: pinCodeController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: townController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: dateController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          const SizedBox(
                            height: 24,
                          ),
                          Center(
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           BloodAvailabilityScreen(),
                                  //     ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                                child: Text(
                                  'CONTINUE',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
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
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            "Please Enter details of the person who wants\nto donate blood.",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff857878)),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Form(
                              child: Column(
                            children: [
                              TextFormField(
                                controller: name2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Name",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: mobile2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Mobile Number",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: email2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Email Address (Optional)",
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
                                  controller: state2Controller,
                                  dataList: state,
                                  lableValue: "Select State",
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Select State";
                                    }
                                    return null;
                                  },
                                  onChangedFN: (v) {
                                    setState(() {});
                                  }),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: district2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select District",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: pinCode2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Pin Code",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: town2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Enter Town Name",
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: date2Controller,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  hintStyle: GoogleFonts.roboto(
                                      color: const Color(0xFF706464),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF706464)),
                                      borderRadius: BorderRadius.circular(41)),
                                  hintText: "Select Date",
                                ),
                              ),
                            ],
                          )),
                          const SizedBox(
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
                                            const BloodDonationScreen(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFBF222B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(69))),
                                child: Text(
                                  'SEARCH',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
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
