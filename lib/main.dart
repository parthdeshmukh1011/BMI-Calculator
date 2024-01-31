import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:bmi_calculator/bmi.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: NewGradientAppBar(
          title: Text('BMI Calculator',
              style: TextStyle(fontSize: 20, color: Colors.black)),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 96, 201, 163),
              Color.fromARGB(255, 229, 247, 171),
            ],
          ),
        ),
        //bottomNavigationBar: Theme(data: , child: child),
        body: BMICalculator(),
      ),
    ),
  );
}
