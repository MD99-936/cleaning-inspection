// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:io';

import 'package:cleaning_list_app/Screens/Stepper_Form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:page_transition/page_transition.dart';
import '../Widgets/List_View.dart';
import '../Widgets/NavigationDrawer.dart';

final user = FirebaseAuth.instance.currentUser;

class MainScreen extends StatefulWidget {
  String? loc = " ";
  String? group = " ";
  String? floor = " ";
  String? wall = " ";
  String? ceiling = " ";
  String? window = " ";
  String? furniture = " ";
  String? waste = " ";
  String? consumables = " ";
  int? dateDay = 0;
  int? dateMonth = 0;
  int? dateYear = 0;
  bool visibility = false;
  MainScreen(
      {Key? key,
      required this.visibility,
      this.loc,
      this.group,
      this.floor,
      this.wall,
      this.ceiling,
      this.window,
      this.furniture,
      this.waste,
      this.consumables,
      this.dateDay,
      this.dateMonth,
      this.dateYear})
      : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isVisible_container_1 = false;
  bool isVisible_container_2 = false;
  bool isVisible_container_3 = false;
  bool isVisible_container_4 = false;
  bool isVisible_container_5 = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(0),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: Nav_Drawer(context),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 35.0,
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 90.0, 16.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Cleaning\nInspection',
                    style: TextStyle(
                      fontSize: 29.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: ClipOval(
                      child: Material(
                        color: Colors.blue,
                        child: InkWell(
                          splashColor: Colors.grey,
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: Stepper_Form(),
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 200),
                              ),
                            );
                          },
                          child: SizedBox(
                            width: 64.0,
                            height: 64.0,
                            child: Icon(
                              Icons.add,
                              size: 32.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  children: [
                    Visibility(
                      visible: widget.visibility,
                      child: Container(
                        width: 390,
                        height: 190,
                        margin: EdgeInsets.all(9.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 3,
                            color: Colors.blue,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Inspection Date: ${widget.dateDay}/${widget.dateMonth}/${widget.dateYear}',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                                IconButton(
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  iconSize: 27.0,
                                  onPressed: () {
                                    setState(() {
                                      widget.visibility = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.delete_outline_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Location: ${widget.loc}',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Group: ${widget.group}',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View Details -->',
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
