// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:cleaning_list_app/Screens/Login_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'MainScreen.dart';

Widget Splash() {
  return AnimatedSplashScreen(
    splash: Image.asset(
      'assets/logo_nub1.png',
    ),
    splashIconSize: 100.0,
    splashTransition: SplashTransition.fadeTransition,
    animationDuration: Duration(
      milliseconds: 200,
    ),
    nextScreen: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainScreen(
            visibility: false,
          );
        } else {
          return LoginScreen();
        }
      },
    ),
    duration: 200,
    backgroundColor: Colors.white,
    pageTransitionType: PageTransitionType.fade,
  );
}
