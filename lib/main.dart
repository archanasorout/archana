import 'package:flutter/material.dart';
import 'package:sam_work/src/login_screen.dart';
import 'package:sam_work/src/signup_screen.dart';
import 'package:sam_work/src/splash_screen.dart';
import 'package:sam_work/src/welcome_screen.dart';
import 'package:sam_work/src/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(
              backgroundColor: const [
                Colors.white,
              ],
              iconHeight: 100,
              iconWidth: 200,
              duration: 1,
              primaryText: 'VireStore',
              primaryTextColor: Colors.black,
              primaryTextFont: 'Roboto',
              primaryTextSize: 38,
              primaryTextWeight: FontWeight.w700,
              nextScreenPath: WelcomeScreen.id,
              debug: false,
            ),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        Dashboard.id: (context) => Dashboard(),
      },
    );
  }
}
