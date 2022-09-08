// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print

import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cleaning_list_app/Screens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'Signup_Screen.dart';
import 'package:page_transition/page_transition.dart';
import '../animations/animations.dart';
import '../input_decoration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Services/AuthServices.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final AuthServices _auth = AuthServices();
TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final feature = ["Login", "Sign Up"];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async => exit(0),
      child: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
              backgroundColor: Colors.white,
              body: i == 0
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(25),
                            child: Column(
                              children: [
                                Row(
                                    // TabBar Code
                                    children: [
                                      Container(
                                        height: height / 24,
                                        width: width / 2,
                                        child: TopAnime(
                                          1,
                                          6,
                                          child: ListView.builder(
                                            itemCount: feature.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    i = index;
                                                  });
                                                },
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 20),
                                                      child: Text(
                                                        feature[index],
                                                        style: TextStyle(
                                                          color: i == index
                                                              ? Colors.black
                                                              : Colors.grey
                                                                  .withOpacity(
                                                                      0.7),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(child: Container()),
                                    ]),

                                SizedBox(
                                  height: 50,
                                ),

                                // Top Text
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  width: width,
                                  child: TopAnime(
                                    1,
                                    20,
                                    curve: Curves.fastOutSlowIn,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Enter your Email and password,",
                                          style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: height / 14,
                                ),

                                // TextFiled
                                Form(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width / 1.2,
                                        height: height / 3.10,
                                        //  color: Colors.red,
                                        child: TopAnime(
                                          1,
                                          15,
                                          curve: Curves.easeInExpo,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextFormField(
                                                // readOnly: true, // * Just for Debug
                                                cursorColor: Colors.black,

                                                controller: _email,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                showCursor: true,
                                                //cursorColor: mainColor,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.email_outlined,
                                                    color: Colors.blue,
                                                    size: 26.0,
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(90.0),
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(70.0),
                                                    ),
                                                  ),
                                                  labelText: " Email Address",
                                                  contentPadding:
                                                      EdgeInsets.all(23.0),
                                                  labelStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),
                                              TextFormField(
                                                controller: _password,
                                                obscureText: true,
                                                enableSuggestions: false,
                                                autocorrect: false,
                                                // readOnly: true, // * Just for Debug
                                                cursorColor: Colors.black,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                showCursor: true,
                                                //cursorColor: mainColor,
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.lock_outlined,
                                                    color: Colors.blue,
                                                    size: 26.0,
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(90.0),
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.grey,
                                                        width: 2),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(70.0),
                                                    ),
                                                  ),
                                                  labelText: " Password",
                                                  contentPadding:
                                                      EdgeInsets.all(23.0),
                                                  labelStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          // Bottom
                          i == 0
                              ? TopAnime(
                                  2,
                                  42,
                                  curve: Curves.fastOutSlowIn,
                                  child: Container(
                                    height: height / 6,
                                    // color: Colors.red,

                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 30,
                                          top: 15,
                                          child: Text(
                                            "Fogot Password?",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 43),
                                          child: Container(
                                            height: 100,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Positioned(
                                          left: 230,
                                          top: 10,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUPScreen(),
                                                ),
                                              );
                                            },
                                            child: FlatButton(
                                              splashColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onPressed: (() async {
                                                if (_email.text.isEmpty ||
                                                    _password.text.isEmpty) {
                                                  showAnimatedDialog(
                                                    context: context,
                                                    barrierDismissible: true,
                                                    builder:
                                                        (BuildContext context) {
                                                      return ClassicGeneralDialogWidget(
                                                        titleText:
                                                            'Error Occured',
                                                        contentText:
                                                            'Either fields cannot be empty',
                                                        onPositiveClick: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      );
                                                    },
                                                    animationType:
                                                        DialogTransitionType
                                                            .rotate3D,
                                                    curve: Curves.fastOutSlowIn,
                                                    duration: Duration(
                                                        milliseconds: 400),
                                                  );
                                                } else {
                                                  signinUser(context);
                                                }
                                              }),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                width: width / 4,
                                                height: height / 12,
                                                child: Icon(
                                                  Icons.arrow_forward_ios_sharp,
                                                  size: 35,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : SignUPScreen()
                        ],
                      ),
                    )
                  : SignUPScreen()),
        ),
      ),
    );
  }
}

void signinUser(BuildContext context) async {
  dynamic authresult = await _auth.loginUser(_email.text, _password.text);
  if (authresult == null) {
    print('Sign in error, unable to login');
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ClassicGeneralDialogWidget(
          titleText: 'Sign In Error',
          contentText: 'Check your email or password',
          onPositiveClick: () {
            Navigator.of(context).pop();
          },
        );
      },
      animationType: DialogTransitionType.rotate3D,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 400),
    );
  } else {
    _email.clear();
    _password.clear();
    print('Sign in Successful');
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: MainScreen(
          visibility: false,
        ),
        type: PageTransitionType.fade,
      ),
    );
  }
}
