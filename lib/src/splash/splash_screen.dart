import 'dart:ui';
import 'package:sam_work/extension/UtilExtension.dart';

import 'package:flutter/material.dart';
 import 'package:sam_work/common/common_widget.dart';
import 'package:sam_work/src/auth/login_screen.dart';
import 'package:sam_work/utils/theme.dart';

import 'package:sam_work/src/splash/welcome_screen.dart';
import 'package:sam_work/utils/util.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    3.delay(() {
    //  navigate(context, screen: WelcomeScreen());

      openScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
       return
          Scaffold(
      body:Center(  child:CustomText(
          name: "Virestore",
          style: TextStyle(
              color: colorBlack,
              fontSize: 28,
              fontWeight: FontWeight.bold)))

       );
  }

  openScreen() async {
    navigate(context, screen: WelcomeScreen());
  }
}
