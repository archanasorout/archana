import 'package:flutter/material.dart';

const kTextFiledDecoration = InputDecoration(
  hintStyle:
      TextStyle(color: Colors.black, fontSize: 20),
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);

const kCompanyNameStyle =
    TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold);
const kCompanyNamePadding = EdgeInsets.only(top: 170.0, left: 120.0);
const kButtonTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35);
