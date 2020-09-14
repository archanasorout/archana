import 'package:flutter/material.dart';
import 'package:sam_work/common/common_widget.dart';
import 'package:sam_work/extension/UtilExtension.dart';
import 'package:sam_work/utils/theme.dart';
import '../../utils/constants.dart';
import 'package:sam_work/utils/util.dart';
import 'package:sam_work/utils/util.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signupscreen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(context));
  }

  _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        100.horizontalSpace(),
      CustomText(name: "Virestore",style: TextStyle(color: colorBlack,fontSize: 28,fontWeight: FontWeight.bold)),
        20.horizontalSpace(),

        customTextField(
          hint: NAME,
          margin: EdgeInsets.all(20),
        ),
        customTextField(
          hint: EMAIL,
          margin: EdgeInsets.only(left: 20, right: 20),
        ),
        customTextField(
            hint: SHOP_CATAGORY,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20)),
        customTextField(
            hint: PASSWORD,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            scureText: true),
        30.horizontalSpace(),
        customButton(
            name: REGISTER_SHOP, height: 50, width: fullWidth(context) - 100),
      ]),
    );
  }
}
