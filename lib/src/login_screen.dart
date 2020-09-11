import 'package:flutter/material.dart';
import 'package:sam_work/utilities/constants.dart';
import 'package:sam_work/src/dashboard.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 170.0),
              child: Text(
                "VireStore",
                style: kCompanyNameStyle,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: kTextFiledDecoration.copyWith(
                        hintText: "Enter your phone number"),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    decoration: kTextFiledDecoration.copyWith(
                        hintText: "Enter your password "),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: ButtonTheme(
                minWidth: 250,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    "Login",
                    style: kButtonTextStyle,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  },
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
