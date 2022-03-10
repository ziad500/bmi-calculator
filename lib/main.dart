import 'package:bmi/bmi_result_screen.dart';
import 'package:bmi/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: BmiScreen(),
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}
