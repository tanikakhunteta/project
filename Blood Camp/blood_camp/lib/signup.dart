import 'package:blood_camp/all_sreen.dart';
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

  bool isPasswordvisible = false;
  bool isConfirmPasswordvisible = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController cityController = TextEditingController();
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
              SizedBox(
                height: 16,
              ),
              Text(
                'Complete your profile',
                style: GoogleFonts.roboto(
                    color: Color(0xFF303030),
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Please provide us your details below.',
                style: GoogleFonts.roboto(
                    color: Color(0xFF667685),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 24,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Name";
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          } else if (!value.isValidEmail()) {
                            return "Enter Correct Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Email address",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else if (!value.isValidPassword()) {
                            return "Password must contain one special character,one\nnumeric value, and first letter capital";
                          }
                          _password = value;

                          return null;
                        },
                        obscureText: !isPasswordvisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isPasswordvisible = !isPasswordvisible;
                              });
                            },
                            child: !isPasswordvisible
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Color(0xFF323232),
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color(0xFF323232),
                                  ),
                          ),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: confirmController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Confirm Password";
                          } else if (value != _password) {
                            return "Password do not match";
                          }
                          return null;
                        },
                        obscureText: !isConfirmPasswordvisible,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isConfirmPasswordvisible =
                                    !isConfirmPasswordvisible;
                              });
                            },
                            child: !isConfirmPasswordvisible
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: Color(0xFF323232),
                                  )
                                : Icon(
                                    Icons.visibility_off_outlined,
                                    color: Color(0xFF323232),
                                  ),
                          ),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Confirm Password",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter City";
                          }
                          return null;
                        },
                        controller: cityController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "City",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonDropdown(
                          styleLabel: GoogleFonts.roboto(
                              color: Color(0xFF303030),
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
                          dataList: state,
                          onChangedFN: (v) {
                            setState(() {});
                          }),
                      SizedBox(
                        height: 16,
                      ),
                      UiUtilsScreen.commonDropdown(
                          styleLabel: GoogleFonts.roboto(
                              color: Color(0xFF303030),
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
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        controller: addressController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: GoogleFonts.roboto(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(41),
                              borderSide: BorderSide(color: Color(0xFF667685))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF667685)),
                              borderRadius: BorderRadius.circular(41)),
                          labelText: "Address",
                        ),
                      ),
                    ],
                  )),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
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
                    'I agree the Terms & Conditions',
                    style: GoogleFonts.roboto(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
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
                              builder: (context) => AllScreen(),
                            ));
                      }
                    },
                    child: Text(
                      'CONTINUE',
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
              SizedBox(
                height: 31,
              )
            ]),
          ),
        ));
  }
}
