import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gkmt_institute/Signup.dart';
import 'package:gkmt_institute/homescreen.dart';
import 'package:gkmt_institute/login_with_phone_number.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isvisible = false;
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(children: [
              Center(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 1, 74, 92),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60))),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220),
                child: Center(
                  child: Container(
                    height: 470,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Login Account",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
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
                                    decoration:
                                        InputDecoration(hintText: "Username"),
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
                                    decoration: InputDecoration(
                                        suffixIcon: InkWell(
                                            onTap: () {
                                              setState(() {
                                                isvisible = !isvisible;
                                              });
                                            },
                                            child: !isvisible
                                                ? Icon(
                                                    Icons.visibility_outlined)
                                                : Icon(Icons
                                                    .visibility_off_outlined)),
                                        hintText: "Password"),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 145),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                              height: 50,
                              width: 260,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _auth
                                      .signInWithEmailAndPassword(
                                          email:
                                              emailController.text.toString(),
                                          password: passwordController.text
                                              .toString())
                                      .then((value) {
                                    if (value.user != null) {
                                      if (value.user!.emailVerified) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen(),
                                            ));
                                      }else{
                                        
                                      }
                                    }
                                  });
                                }
                              },
                              child: Text("LOG IN"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 225, 224, 224),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(child: Text("OR")),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Otp_Login_Screen(),
                                    ));
                              },
                              child: Image.asset(
                                "assets/images/phone.png",
                                height: 35,
                              ),
                            ),
                            Image.asset(
                              "assets/images/google (1).png",
                              height: 30,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ))
              ],
            ),
          ]),
        ));
  }
}
