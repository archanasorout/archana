import 'package:flutter/material.dart';
import 'package:sam_work/common/common_widget.dart';

import 'package:sam_work/extension/UtilExtension.dart';
import 'package:sam_work/utils/constants.dart';
import 'package:sam_work/utils/theme.dart';
import 'package:sam_work/utils/util.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          20.horizontalSpace(),
          customTextField(
            hint: PHONE_NUMBER,
            margin: EdgeInsets.all(20),
          ),
          customTextField(
              hint: PASSWORD,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              scureText: true),
          30.horizontalSpace(),
          customButton(
              name: LOGIN, height: 50, width: fullWidth(context) - 100),
        ]),
      ),
    );
  }
}
