import 'package:flutter/material.dart';
import 'package:sam_work/src/login_screen.dart';
import 'package:sam_work/src/signup_screen.dart';
import 'package:sam_work/utilities/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 170.0,
              ),
              child: Text(
                "VireStore",
                style: kCompanyNameStyle,
              ),
            ),
            SizedBox(
              height: 60.0,
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
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Center(
              child: ButtonTheme(
                minWidth: 250,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    "Sign up",
                    style: kButtonTextStyle,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
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
