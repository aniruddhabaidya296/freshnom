import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final double width;
  const MyTextFormField(
      {Key? key, required this.labelText, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
                cursorColor: Colors.transparent,
                cursorWidth: 0,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 60),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: labelText,
                  labelStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ))));
  }
}
