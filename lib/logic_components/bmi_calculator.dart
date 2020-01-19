import 'dart:math';

import 'package:flutter/cupertino.dart';

class BmiCalculator {
  BmiCalculator({@required this.height, @required this.weight});

  final int height, weight;
  double _bmi;

  String calculateBmiScore() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(2);
  }

  String generateResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String generateInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Congrats. You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should try to eat a bit more.';
    }
  }
}
