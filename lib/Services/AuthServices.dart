import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Screens/Login_Screen.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Registration
  Future createNewUser(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future loginUser(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future logOut(BuildContext context) async {
    try {
      return await FirebaseAuth.instance.signOut().then((_) {
        Navigator.of(context).pushAndRemoveUntil(
            PageTransition(
              child: LoginScreen(),
              type: PageTransitionType.fade,
            ),
            (Route<dynamic> route) => false);
      });
    } catch (e) {
      print(
        e.toString(),
      );
      return null;
    }
  }
}
