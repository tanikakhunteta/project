import 'package:blood_camp/all_sreen.dart';
import 'package:blood_camp/model/district_details_model.dart';
import 'package:blood_camp/model/state_details_model.dart';
import 'package:blood_camp/network_apis/api_servies.dart';
import 'package:blood_camp/ui_utils.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
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

  bool isPasswordvisible = false;
  bool isConfirmPasswordvisible = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  SingleValueDropDownController cityController =
      SingleValueDropDownController();
  SingleValueDropDownController stateController =
      SingleValueDropDownController();
  SingleValueDropDownController bloodGroupController =
      SingleValueDropDownController();
  TextEditingController addressController = TextEditingController();

  bool? ischecked = false;
  final _formKey = GlobalKey<FormState>();
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Complete your profile',
                style: GoogleFonts.roboto(
                    color: const Color(0xFF303030),
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Please provide us your details below.',
                style: GoogleFonts.roboto(
                    color: const Color(0xFF667685),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 24,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      UiUtilsScreen.commonTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Name";
                          }
                          return null;
                        },
                        controller: nameController,
                        labelValue: "Name",
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF303030),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          } else if (!value.isValidEmail()) {
                            return "Enter Correct Email";
                          }
                          return null;
                        },
                        controller: emailController,
                        labelValue: "Email Address",
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF303030),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonTextFormField(
                        obscureText: !isPasswordvisible,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else if (!value.isValidPassword()) {
                            return "Password must contain one special character,one\nnumeric value, and first letter capital";
                          }
                          _password = value;

                          return null;
                        },
                        controller: passwordController,
                        labelValue: "Password",
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF303030),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordvisible = !isPasswordvisible;
                            });
                          },
                          child: !isPasswordvisible
                              ? const Icon(
                                  Icons.visibility_outlined,
                                  color: Color(0xFF323232),
                                )
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                  color: Color(0xFF323232),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonTextFormField(
                        obscureText: !isConfirmPasswordvisible,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Confirm Password";
                          } else if (value != _password) {
                            return "Password do not match";
                          }
                          return null;
                        },
                        controller: confirmController,
                        labelValue: "Confirm Password",
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF303030),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isConfirmPasswordvisible =
                                  !isConfirmPasswordvisible;
                            });
                          },
                          child: !isConfirmPasswordvisible
                              ? const Icon(
                                  Icons.visibility_outlined,
                                  color: Color(0xFF323232),
                                )
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                  color: Color(0xFF323232),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonDropdown(
                          styleLabel: GoogleFonts.roboto(
                              color: const Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Select State";
                            }
                            return null;
                          },
                          controller: stateController,
                          lableValue: 'State',
                          dataList: stateDetailsModel
                                  ?.stateDetailsData?.dropDownState ??
                              [],
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
                                color: const Color(0xFF303030),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Select City";
                              }
                              return null;
                            },
                            controller: cityController,
                            lableValue: 'City',
                            dataList: districtDetailsModel
                                    ?.districtDetailsData?.dropDownDistrict ??
                                [],
                            onChangedFN: (v) {
                              setState(() {});
                            }),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonDropdown(
                          styleLabel: GoogleFonts.roboto(
                              color: const Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Select Blood Group";
                            }
                            return null;
                          },
                          controller: bloodGroupController,
                          dataList: bloodGroup,
                          lableValue: "Blood Group",
                          onChangedFN: (v) {
                            setState(() {});
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Address";
                          }
                          return null;
                        },
                        controller: addressController,
                        labelValue: "Address",
                        styleLabel: GoogleFonts.roboto(
                            color: const Color(0xFF303030),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Checkbox(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      value: ischecked,
                      activeColor: Colors.red,
                      tristate: false,
                      onChanged: (newBool) {
                        setState(() {
                          ischecked = newBool;
                        });
                      }),
                  Text(
                    'I agree to the Terms & Conditions',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      height: 50, width: MediaQuery.of(context).size.width),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          ischecked == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllScreen(),
                            ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBF222B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(69))),
                    child: Text(
                      'CONTINUE',
                      style: GoogleFonts.roboto(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 31,
              )
            ]),
          ),
        ));
  }
}
