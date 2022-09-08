// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'package:cleaning_list_app/Screens/Login_Screen.dart';
import 'package:cleaning_list_app/Screens/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return LoginScreen();
    } else {
      return MainScreen();
    }
  }
}
