import 'package:flutter/material.dart';
import 'package:sam_work/utilities/constants.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signupscreen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: kCompanyNamePadding,
              child: Text(
                "VireStore Signup",
                style: kCompanyNameStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
