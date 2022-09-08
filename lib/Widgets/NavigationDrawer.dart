// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'dart:io';

import 'package:cleaning_list_app/Services/AuthServices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

final user = FirebaseAuth.instance.currentUser;
final AuthServices _auth = AuthServices();
Widget Nav_Drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: 170.0,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.account_circle_rounded,
                  size: 60.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  user!.email.toString(),
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.menu_book_sharp,
            color: Colors.black,
          ),
          title: const Text(
            'Cleaning Inspection',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          onTap: () {},
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          onTap: () async {},
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.logout_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Log Out',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          onTap: () async {
            await _auth.logOut(context);
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          title: const Text(
            'Exit App',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          onTap: () {
            exit(0);
          },
        ),
      ],
    ),
  );
}
