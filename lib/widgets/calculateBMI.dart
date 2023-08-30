import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

double calculateBMI(double vazn, double ghad) {
  return vazn / (ghad * ghad);
}

String getBmiText(double bmiNumber) {
  String bmiText = '';
  if (bmiNumber <= 16.5) {
    bmiText = "دچار کمبود وزن شدید هستید !";
  } else if (bmiNumber >= 16.5 && bmiNumber < 18.5) {
    bmiText = "شما کمبود وزن دارید !";
  } else if (bmiNumber >= 18.5 && bmiNumber < 25) {
    bmiText = "وزن شما عادی است.";
  } else if (bmiNumber >= 25 && bmiNumber < 30) {
    bmiText = "شما کمی اضافه وزن دارید !";
  } else if (bmiNumber >= 30 && bmiNumber < 35) {
    bmiText = "شما دچار چاقی درجه یک هستید !";
  } else if (bmiNumber >= 30 && bmiNumber < 40) {
    bmiText = "شما دچار چاقی درجه دو هستید";
  } else if (bmiNumber > 40) {
    bmiText = "شما دچار چاقی درجه 3 هستید !";
  }
  return bmiText;
}

Color? getBmiColor(double bmiNumber) {
  Color? bmiColor = Colors.black;
  if (bmiNumber <= 18.5) {
    bmiColor = lowBMI;
  } else if (bmiNumber >= 18.5 && bmiNumber < 25) {
    bmiColor = goodBMI;
  } else if (bmiNumber <= 35) {
    bmiColor = mediumBMI;
  } else if (bmiNumber <= 40 || bmiNumber > 40) {
    bmiColor = highBMI;
  }
  return bmiColor;
}

Map<dynamic, dynamic> getBMISize(double bmiNumber) {
  Map bmiMap = {"goodWidth": 50, "badWidth": 50};

  if (bmiNumber <= 16.5) {
    bmiMap["goodWidth"] = 80.0;
    bmiMap["badWidth"] = 200.0;
  } else if (bmiNumber >= 16.5 && bmiNumber < 18.5) {
    bmiMap["goodWidth"] = 120.0;
    bmiMap["badWidth"] = 180.0;
  } else if (bmiNumber >= 18.5 && bmiNumber < 25) {
    bmiMap["goodWidth"] = 140.0;
    bmiMap["badWidth"] = 120.0;
  } else if (bmiNumber >= 25 && bmiNumber < 30) {
    bmiMap["goodWidth"] = 140.0;
    bmiMap["badWidth"] = 140.0;
  } else if (bmiNumber >= 30 && bmiNumber < 35) {
    bmiMap["goodWidth"] = 120.0;
    bmiMap["badWidth"] = 150.0;
  } else if (bmiNumber >= 30 && bmiNumber < 40) {
    bmiMap["goodWidth"] = 100.0;
    bmiMap["badWidth"] = 180.0;
  } else if (bmiNumber > 40) {
    bmiMap["goodWidth"] = 80.0;
    bmiMap["badWidth"] = 200.0;
  }

  return bmiMap;
}
