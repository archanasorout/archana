import 'package:flutter/material.dart';
import 'package:sam_work/common/common_widget.dart';
import 'package:sam_work/src/auth/login_screen.dart';
import 'package:sam_work/src/auth/signup_screen.dart';
import 'package:sam_work/utils/constants.dart';
import 'package:sam_work/utils/theme.dart';
import 'package:sam_work/extension/UtilExtension.dart';
import 'package:sam_work/utils/util.dart';

class WelcomeScreen extends StatefulWidget {
   @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: _body(context));
  }

  _body(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(children: [
          CustomText(
              name: "Virestore",
              style: TextStyle(
                  color: colorBlack,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),

          30.horizontalSpace(),
          customButton(
              name: LOGIN, height: 50, width: fullWidth(context) - 100,
              function: () {
                navigate(context, screen: LoginScreen());
              }
           ),
          20.horizontalSpace(),

          customButton(
              name: SIGN_UP, height: 50, width: fullWidth(context) - 100,
              function: () {
                navigate(context, screen: SignupScreen());
              }
          ),
        ]),
      ),
    );
  }
  }
