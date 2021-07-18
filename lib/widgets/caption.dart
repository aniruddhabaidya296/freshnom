import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  final String header;
  const Caption({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Text(
            "$header",
            style: TextStyle(
                fontFamily: "VisbyCF",
                fontSize: 40,
                fontWeight: FontWeight.w900),
          )),
    );
  }
}
