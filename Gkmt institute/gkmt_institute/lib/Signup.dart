import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/Login.dart';
import 'package:gkmt_institute/Signedup.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }
}

bool showEmailError = false;

class _SignupState extends State<Signup> {
  bool isvisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: MediaQuery.of(context).size.height / 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/LOGO-png.png",
                height: 200,
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
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(hintText: "Name"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Date of Birth";
                          }
                          return null;
                        },
                        controller: dobController,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(hintText: "Date of Birth"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Email";
                          } else if (!value.isValidEmail()) {
                            return "Enter correct Email";
                          }
                          return null;
                        },
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(hintText: "Email"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: !isvisible,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password";
                          } else if (!value.isValidPassword()) {
                            return "The password must contain at leaset 6 digits with first letter capital, numeric values and atlease one special characters";
                          }
                          return null;
                        },
                        controller: passwordController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isvisible = !isvisible;
                                  });
                                },
                                child: !isvisible
                                    ? Icon(Icons.visibility_outlined)
                                    : Icon(Icons.visibility_off_outlined)),
                            hintText: "Password"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Address";
                          }
                          return null;
                        },
                        controller: addressController,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(hintText: "Address"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        maxLength: 10,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Mobile Number";
                          }
                          return null;
                        },
                        controller: mobileController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Mobile No."),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await _auth
                            .createUserWithEmailAndPassword(
                                email: emailController.text.toString(),
                                password: passwordController.text.toString())
                            .then((value) {
                          if (value.user != null) {
                            value.user!
                                .sendEmailVerification()
                                .then((value) async {
                              final user = <String, dynamic>{
                                'name': nameController.text,
                                'DOB': dobController.text,
                                'email': emailController.text,
                                'password': passwordController.text,
                                'address': addressController.text,
                                'mobile_no.': mobileController.text
                              };
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Signedup(userInfo: user),
                                  ));
                            });
                          }
                          // else
                          //   Map<String, dynamic> user = {
                          //     'name': nameController.text,
                          //     'DOB': dobController.text,
                          //     'email': emailController.text,
                          //     'password': passwordController.text,
                          //     'address': addressController.text,
                          //     'mobile_no.': mobileController.text
                          //   };
                          // firebaseFirestore!
                          //     .collection("users")
                          //     .get()
                          //     .then((value) {
                          //   Navigator.pushAndRemoveUntil(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => HomeScreen(),
                          //       ),
                          //       (route) => false);
                          // }
                          // );
                        });
                      }
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account ?",
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
