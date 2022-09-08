// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cleaning_list_app/Screens/MainScreen.dart';
import 'package:cleaning_list_app/Services/AuthServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'Login_Screen.dart';
import '../Services/AuthServices.dart';
import 'package:page_transition/page_transition.dart';
import '../animations/animations.dart';
import '../input_decoration.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final AuthServices _auth = AuthServices();
TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();
TextEditingController _confirmPass = TextEditingController();
final _key = GlobalKey<FormState>();

class SignUPScreen extends StatefulWidget {
  SignUPScreen({Key? key}) : super(key: key);

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  final feature = ["Login", "Sign Up"];

  int i = 1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: i == 1
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            // TabBar Code
                            Row(children: [
                              Container(
                                height: height / 19,
                                width: width / 2,
                                child: TopAnime(
                                  1,
                                  6,
                                  child: ListView.builder(
                                    itemCount: feature.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            i = index;
                                          });
                                        },
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20),
                                              child: Text(
                                                feature[index],
                                                style: TextStyle(
                                                  color: i == index
                                                      ? Colors.black
                                                      : Colors.grey
                                                          .withOpacity(0.7),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
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
                              height: 30,
                            ),

                            // Top Text
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              width: width,
                              child: TopAnime(
                                1,
                                19,
                                curve: Curves.fastOutSlowIn,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Hello ",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "There",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Enter your information below,",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: height / 18,
                            ),

                            // TextFiled
                            Container(
                              width: width / 1.2,
                              height: height / 2.55,
                              child: TopAnime(
                                1,
                                16,
                                curve: Curves.easeInExpo,
                                child: Form(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextFormField(
                                        controller: _email,
                                        cursorColor: Colors.black,
                                        style: TextStyle(color: Colors.black),
                                        showCursor: true,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            color: Colors.blue,
                                            size: 26.0,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(90.0),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(70.0),
                                            ),
                                          ),
                                          labelText: "Email Address",
                                          contentPadding: EdgeInsets.all(23.0),
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
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
                                        cursorColor: Colors.black,
                                        style: TextStyle(color: Colors.black),
                                        showCursor: true,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock_outlined,
                                            color: Colors.blue,
                                            size: 26.0,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(90.0),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(70.0),
                                            ),
                                          ),
                                          labelText: " Password",
                                          contentPadding: EdgeInsets.all(23.0),
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      TextFormField(
                                        controller: _confirmPass,
                                        obscureText: true,
                                        enableSuggestions: false,
                                        autocorrect: false,
                                        cursorColor: Colors.black,
                                        style: TextStyle(color: Colors.black),
                                        showCursor: true,
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.lock_outlined,
                                            color: Colors.blue,
                                            size: 26.0,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(90.0),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(70.0),
                                            ),
                                          ),
                                          labelText: "Confirm Password",
                                          contentPadding: EdgeInsets.all(23.0),
                                          labelStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Bottom
                      i == 1
                          ? TopAnime(
                              1,
                              29,
                              curve: Curves.fastOutSlowIn,
                              child: Container(
                                height: height / 6,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 43),
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
                                                  LoginScreen(),
                                            ),
                                          );
                                        },
                                        child: FlatButton(
                                          onPressed: () {
                                            if (_email.text.isEmpty ||
                                                _password.text.isEmpty ||
                                                _confirmPass.text.isEmpty) {
                                              showAnimatedDialog(
                                                context: context,
                                                barrierDismissible: true,
                                                builder:
                                                    (BuildContext context) {
                                                  return ClassicGeneralDialogWidget(
                                                    titleText: 'Error Occured',
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
                                                duration:
                                                    Duration(milliseconds: 400),
                                              );
                                            } else if (_password.text !=
                                                _confirmPass.text) {
                                              showAnimatedDialog(
                                                context: context,
                                                barrierDismissible: true,
                                                builder:
                                                    (BuildContext context) {
                                                  return ClassicGeneralDialogWidget(
                                                    titleText: 'Error Occured',
                                                    contentText:
                                                        'Passwords does not match',
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
                                                duration:
                                                    Duration(milliseconds: 400),
                                              );
                                            } else if (_password.text ==
                                                _confirmPass.text) {
                                              createUser(context);
                                            }
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
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
                          : LoginScreen()
                    ],
                  ),
                )
              : LoginScreen()),
    );
  }
}

void createUser(BuildContext context) async {
  dynamic result = await _auth.createNewUser(_email.text, _password.text);
  if (result == null) {
    print('Email is not valid');
    showAnimatedDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return ClassicGeneralDialogWidget(
          titleText: 'Sign Up Error',
          contentText: 'Email is not valid, or already taken.',
          onPositiveClick: () {
            Navigator.of(context).pop();
          },
        );
      },
      animationType: DialogTransitionType.rotate3D,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 200),
    );
  } else {
    print(
      result.toString(),
    );
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
