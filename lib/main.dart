import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMI_Calculation());

class BMI_Calculation extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}