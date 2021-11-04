import 'package:flutter/material.dart';

class BmiBrain {
  final int? height;
  final int? weight;
  double? _bmi;
  BmiBrain({this.height, this.weight});
  String BmiCalculator() {
    _bmi = weight! / (height! / 100);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return "Overwieght";
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String interpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}