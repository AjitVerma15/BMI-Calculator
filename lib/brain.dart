
import 'dart:math';
import 'package:bmicalculator/InputPage.dart';
import 'package:flutter/material.dart';

class Brain{
  Brain({this.height, this.weight,this.gender});
  final int height;
  final int weight;
  final gender;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
  Color getcolor(){
    if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi >= 18.5) {
      return Color(0xFF24D876);
    } else {
      return Colors.yellow;
    }
  }

  String getidealweight(){

    double lower = 18.5*pow(height,2);
    int upper = 25*pow(height,2);

    lower = lower/10000;
    double uppe = upper/10000;

    String lower_range = lower.toStringAsFixed(1);
    String upper_range = uppe.toStringAsFixed(1);

    return lower_range+" - "+upper_range+" Kgs";
    /*if(gender==Gender.male) {
      if (height >= 137 && height < 140) {
        return "28.5- 34.9 Kgs";
      }
      else if (height >= 140 && height < 142) {
        return "30.8-38.1 Kgs";
      }
      else if (height >= 142 && height < 145) {
        return "33.5-40.8 Kgs";
      }
      else if (height >= 145 && height < 147) {
        return "35.8-43.9 Kgs";
      }
      else if (height >= 147 && height < 150) {
        return "38.5-46.7 Kgs";
      }
      else if (height >= 150 && height < 152) {
        return "40.8-49.9 Kgs";
      }
      else if (height >= 152 && height < 155) {
        return "41.1-53 Kgs";
      }
      else if (height >= 155 && height < 157) {
        return "45.8-55.8 Kgs";
      }
      else if (height >= 157 && height < 160) {
        return "48.1-58.9 Kgs";
      }
      else if (height >= 160 && height < 163) {
        return "50.8-60.1 Kgs";
      }
      else if (height >= 163 && height < 165) {
        return "50-64.8 Kgs";
      }
      else if (height >= 165 && height < 168) {
        return "55.3-68 Kgs";
      }
      else if (height >= 168 && height < 170) {
        return "58-70.7 Kgs";
      }
      else if (height >= 170 && height < 173) {
        return "60.3-73.7 Kgs";
      }
      else if (height >= 173 && height < 175) {
        return "63-70.6 Kgs";
      }
      else if (height >= 175 && height < 178) {
        return "65.3-79.8 Kgs";
      }
      else if (height >= 178 && height < 180) {
        return "67.6-83 Kgs";
      }
      else if (height >= 180 && height < 183) {
        return "70.3-85.7 Kgs";
      }
      else if (height >= 183 && height < 186) {
        return "72.6-88.9 Kgs";
      }
      else if (height >= 186) {
        return "89 - 95 Kgs";
      }
    }
    else if(gender==Gender.female){
      if (height >= 137 && height < 140) {
        return "28.5- 34.9 Kgs";
      }
      else if (height >= 140 && height < 142) {
        return "30.8-37.6 Kgs";
      }
      else if (height >= 142 && height < 145) {
        return "32.6-39.9 Kgs";
      }
      else if (height >= 145 && height < 147) {
        return "34.9-42.6 Kgs";
      }
      else if (height >= 147 && height < 150) {
        return "36.4-44.9 Kgs";
      }
      else if (height >= 150 && height < 152) {
        return "39-47.6 Kgs";
      }
      else if (height >= 152 && height < 155) {
        return "40.8-49.9 Kgs";
      }
      else if (height >= 155 && height < 157) {
        return "43.1-52.6 Kgs";
      }
      else if (height >= 157 && height < 160) {
        return "44,9-54.9 Kgs";
      }
      else if (height >= 160 && height < 163) {
        return "47.2-57.6 Kgs";
      }
      else if (height >= 163 && height < 165) {
        return "49-59.9 Kgs";
      }
      else if (height >= 165 && height < 168) {
        return "51.2-62.6 Kgs";
      }
      else if (height >= 168 && height < 170) {
        return "53-64.8 Kgs";
      }
      else if (height >= 170 && height < 173) {
        return "55.3-67.6 Kgs";
      }
      else if (height >= 173 && height < 175) {
        return "57.1-69.8 Kgs";
      }
      else if (height >= 175 && height < 178) {
        return "59.4-72.6 Kgs";
      }
      else if (height >= 178 && height < 180) {
        return "61.2-74.8 Kgs";
      }
      else if (height >= 180 && height < 183) {
        return "63.5-77.5 Kgs";
      }
      else if (height >= 183 && height < 186) {
        return "65.3-79.8 Kgs";
      }
      else if (height >= 186) {
        return "80 - 90 Kgs";
      }
    }
    else{
      return "Choose gender";
    }*/
  }


}