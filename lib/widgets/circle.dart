import 'dart:ui';

import 'package:circle_button/circle_button.dart';
import 'package:flutter/material.dart';

class MyCircleButton extends StatelessWidget {
  final String body;
  final double width;
  final double height;

  const MyCircleButton({
    Key? key,
    required Map Function() onTap,
    required this.width,
    required this.height,
    required this.body,
    Color? borderColor,
    double? borderWidth,
    BorderStyle? borderStyle,
    Text? child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      onTap: () => {},
      width: width,
      height: height,
      borderColor: Colors.black,
      borderWidth: 2.0,
      borderStyle: BorderStyle.solid,
      backgroundColor: Colors.transparent,
      child: Text(
        '$body',
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
      ),
    );
  }
}
