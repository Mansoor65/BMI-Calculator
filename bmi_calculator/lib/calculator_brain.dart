import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    }
    if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    }
    if (_bmi > 18.5) {
      return 'You have a normal body Weight. Good Job!';
    } else {
      return 'You have to to lower than a normal body weight. You can eat a bit more.';
    }
  }
}
