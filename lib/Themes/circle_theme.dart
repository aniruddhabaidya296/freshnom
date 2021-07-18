import 'package:flutter/material.dart';

class CircleColors {
  Color borderColor = Colors.black;
  Color textColor = Colors.black;
  Color color = Colors.transparent;

  void initColors() {
    this.borderColor = Colors.black;
    this.textColor = Colors.black;
    this.color = Colors.transparent;
  }

  void selectedColors() {
    this.borderColor = Colors.white;
    this.textColor = Color(0xFFFBAF02);
    this.color = Colors.white;
  }
}
