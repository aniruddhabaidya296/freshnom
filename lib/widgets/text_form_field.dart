import 'package:flutter/material.dart';
import 'package:freshnom/pages/body_height.dart';
import 'package:freshnom/pages/sign_up.dart';

TextEditingController feetValueController = TextEditingController();
TextEditingController inchValueController = TextEditingController();

class MyHeightField extends StatefulWidget {
  final double width;

  const MyHeightField({Key? key, required this.width}) : super(key: key);

  @override
  _MyHeightFieldState createState() => _MyHeightFieldState(width);
}

class _MyHeightFieldState extends State<MyHeightField> {
  final double width;

  _MyHeightFieldState(this.width);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Container(
            width: width,
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                    controller: feetValueController,
                    cursorColor: Colors.transparent,
                    cursorWidth: 0,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 60),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelText: "ft",
                      labelStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    )))),
        SizedBox(width: 20),
        Container(
            width: width,
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                    controller: inchValueController,
                    cursorColor: Colors.transparent,
                    cursorWidth: 0,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 60),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelText: "in",
                      labelStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ))))
      ],
    ));
  }
}
