import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension Integer on int {
delay(Function function) {
  Future.delayed(Duration(seconds: this), () {
    function();
  });
}
marginLeftRightTopBottom(int left,int right)
{
  return EdgeInsets.only(left: left.toDouble(),right:right.toDouble());
}



horizontalSpace() =>
    SizedBox(height: this.toDouble());

verticalSpace() =>
    SizedBox(width: this.toDouble());

toast() =>
    Fluttertoast.showToast(
      msg: this.toString(),
      toastLength: Toast.LENGTH_SHORT,
    );

loop(Function function) {
  for (var i = 0; i < this; i++) {
    function(i);
  }
}

paddingLeft() {
  return EdgeInsets.only(left: this.toDouble());
}

paddingAll() {
  return EdgeInsets.all(this.toDouble());
}

paddingRight() {
  return EdgeInsets.only(right: this.toDouble());
}

paddingHorizontal() {
  return EdgeInsets.only(top: this.toDouble(), bottom: this.toDouble());
}

paddingVertical() {
  return EdgeInsets.only(left: this.toDouble(), right: this.toDouble());
}

marginAll() {
  return EdgeInsets.all(this.toDouble());
}

marginLeft() {
  return EdgeInsets.only(left: this.toDouble());
}

marginRight() {
  return EdgeInsets.only(right: this.toDouble());
}

marginHorizontal() {
  return EdgeInsets.only(top: this.toDouble(), bottom: this.toDouble());
}

marginVertical() {
  return EdgeInsets.only(left: this.toDouble(), right: this.toDouble());
}
}