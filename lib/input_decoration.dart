// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

// Repeated code for TextField
const k_decoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(
      Radius.circular(90.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 2),
    borderRadius: BorderRadius.all(
      Radius.circular(70.0),
    ),
  ),
  labelText: " Email Address",
  contentPadding: EdgeInsets.all(22.0),
  labelStyle:
      TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
);
