import 'package:flutter/material.dart';
import 'package:sam_work/utilities/constants.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: kCompanyNamePadding,
              child: Text(
                "VireStore DashBoard",
                style: kCompanyNameStyle,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
