import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sam_work/bgDecoration.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashScreen';

  // Background color of the screen
  @required
  final List<Color> backgroundColor;

  // Time for which screen will show up
  @required
  final int duration;

  // Image Height
  final double iconHeight;

  // Image Width
  final double iconWidth;

  // Next screen it will land after the splash screen => Route name
  @required
  final String nextScreenPath;

  // Splash screen text => Not Required
  final String primaryText;

  // Screen Text color
  final Color primaryTextColor;

  // Screen Text Size
  final double primaryTextSize;

  // Screen Text font
  final String primaryTextFont;

  // Screen Text font
  final FontWeight primaryTextWeight;

  // Check if user is debugging
  final bool debug;

  SplashScreen(
      {this.backgroundColor,
      this.duration,
      this.nextScreenPath,
      this.primaryText,
      this.iconHeight,
      this.iconWidth,
      this.primaryTextColor,
      this.primaryTextFont,
      this.primaryTextSize,
      this.primaryTextWeight,
      this.debug});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (!widget.debug) {
      new Future.delayed(
        Duration(seconds: widget.duration),
        () => Navigator.pushReplacementNamed(context, widget.nextScreenPath),
      );
    }
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: bgBoxDecoration(widget.backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.primaryText,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: widget.primaryTextColor,
              fontFamily: widget.primaryTextFont,
              fontSize: widget.primaryTextSize,
              fontWeight: widget.primaryTextWeight,
            ),
          ),
        ],
      ),
    );
  }
}
