import 'package:flutter/material.dart';

class calculateBMI {
  calculateBMI({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 1;
  String BMI() {
    double _bmi = 100 * weight / (height * height);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
