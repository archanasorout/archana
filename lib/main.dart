import 'package:flutter/material.dart';
import 'package:sam_work/splash_screen.dart';
import 'package:sam_work/home_screen.dart';

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
              primaryTextColor: Colors.indigo,
              primaryTextFont: 'Roboto',
              primaryTextSize: 38,
              primaryTextWeight: FontWeight.w700,
              nextScreenPath: HomeScreen.id,
              debug: false,
            ),
        HomeScreen.id: (context) => HomeScreen()
      },
    );
  }
}
