import 'package:blood_camp/blood_availability.dart';
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

  final List<DropDownValueModel> bloodGroup = <DropDownValueModel>[
    DropDownValueModel(name: 'A+', value: 'A+'),
    DropDownValueModel(name: "A-", value: "A-"),
    DropDownValueModel(name: "B+", value: "B+"),
    DropDownValueModel(name: "B-", value: "B-"),
    DropDownValueModel(name: "AB+", value: "AB+"),
    DropDownValueModel(name: "AB-", value: "AB-"),
    DropDownValueModel(name: "O+", value: "O+"),
    DropDownValueModel(name: "O-", value: "O-")
  ];

  final List<DropDownValueModel> bloodComponent = <DropDownValueModel>[
    DropDownValueModel(name: 'Whole Blood', value: 'Whole Blood'),
    DropDownValueModel(
        name: "Single Donor Platelet", value: "Single Donor Platelet"),
    DropDownValueModel(
        name: "Single Donor Plasma", value: "Single Donor Plasma"),
    DropDownValueModel(
        name: "Sagm Packed Red Blood Cells",
        value: "Sagm Packed Red Blood Cells"),
    DropDownValueModel(
        name: "Platelet Rich Plasma", value: "Platelet Rich Plasma"),
    DropDownValueModel(
        name: "Platelet Poor Plasma", value: "Platelet Poor Plasma"),
    DropDownValueModel(
        name: "Platelet Concentrate", value: "Platelet Concentrate"),
    DropDownValueModel(name: "Plasma", value: "Plasma"),
    DropDownValueModel(
        name: "Packed Red Blood Cells", value: "Packed Red Blood Cells"),
    DropDownValueModel(name: "Leukoreduced RBC", value: "Leukoreduced RBC"),
    DropDownValueModel(name: "Irradiated RBC", value: "Irradiated RBC"),
    DropDownValueModel(
        name: "Fresh Frozen Plasma", value: "Fresh Frozen Plasma"),
    DropDownValueModel(name: "Cryoprecipitate", value: "Cryoprecipitate"),
    DropDownValueModel(name: "Cryo Poor Plasma", value: "Cryo Poor Plasma"),
  ];

  SingleValueDropDownController bloodGroupController =
      SingleValueDropDownController();
  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  SingleValueDropDownController bloodComponentController =
      SingleValueDropDownController();
  TextEditingController pinCodeController = TextEditingController();

  TextEditingController districtController = TextEditingController();

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
        backgroundColor: Color(0xffBF222B),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Form(
                  child: Column(
                children: [
                  UiUtilsScreen.commonDropdown(
                    styleLabel: GoogleFonts.roboto(
                        color: Color(0xFF706464),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Select State";
                      }
                      return null;
                    },
                    controller: stateController,
                    dataList: state,
                    lableValue: "Select State",
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
                          borderSide: BorderSide(color: Color(0xFF706464)),
                          borderRadius: BorderRadius.circular(41)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF706464)),
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
                          borderSide: BorderSide(color: Color(0xFF706464)),
                          borderRadius: BorderRadius.circular(41)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF706464)),
                          borderRadius: BorderRadius.circular(41)),
                      hintText: "Enter Pin Code",
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
                    controller: bloodGroupController,
                    dataList: bloodGroup,
                    lableValue: "Select Blood Groups",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Select Blood Groups";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
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
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BloodAvailabilityScreen(),
                  ));
            },
            child: Text(
              'SEARCH',
              style:
                  GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
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
