import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 50, width: 200),
            child: InkWell(
              onTap: () {
                signInWithGoogle();
              },
              child: const Text(
                "Google",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ))
        ],
      ),
    );
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  late User? _user;

  Future signInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    UserCredential authResult = await _auth.signInWithCredential(credential);

    _user = authResult.user;

    assert(!_user!.isAnonymous);

    assert(await _user!.getIdToken() != null);

    var currentUser = _auth.currentUser;

    assert(_user!.uid == currentUser!.uid);

    print("User Name: ${_user!.displayName}");
    print("User Email ${_user!.email}");
  }

  Future<User> signIntoFirebase() async {
    print('google');
    FirebaseAuth _auth = FirebaseAuth.instance;
    GoogleSignIn _googleSignIn = GoogleSignIn();

    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth =
        await googleSignInAccount!.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    User user = userCredential.user!;
    return user;
  }
}
