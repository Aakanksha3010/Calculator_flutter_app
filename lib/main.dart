import 'package:flutter/material.dart';
import 'package:calculator_project/Homepage.dart';

void main() =>runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primaryColor: Color(0xffFF9F4A)),
      home: SimpleCalculator(),
      
    );
  }
}




