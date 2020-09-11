import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppBar",
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
