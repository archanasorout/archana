import 'package:flutter/material.dart';
import 'package:sam_work/src/auth/login_screen.dart';
import 'package:sam_work/src/auth/signup_screen.dart';
import 'package:sam_work/src/splash/splash_screen.dart';
import 'package:sam_work/src/splash/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: SplashWidget(),

    );
  }
}
