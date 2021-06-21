import 'dart:math';

class BMICalculator{
  final int height;
  final int weight;
  BMICalculator({this.height, this.weight});
  double _bmi;
  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }
  String getInformation(){
    if(_bmi >= 25){
      return 'You have more than normal body weight, Exercise a bit more.';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight, Keep Going.';
    } else {
      return 'You have less tha normal body weight, You should eat more.';
    }
  }
}