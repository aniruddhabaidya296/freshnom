import 'package:flutter/material.dart';

class GradientImageBox extends StatelessWidget {
  final String path;
  final String heading;
  final String details;

  const GradientImageBox(
      {Key? key,
      required this.path,
      required this.heading,
      required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage("$path"))),
        child: Container(
          alignment: Alignment.bottomLeft,
          height: MediaQuery.of(context).size.height / 4.5,
          width: MediaQuery.of(context).size.width / 1.3,
          child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$heading",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$details",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black,
                ],
                stops: [
                  0.0,
                  1.0
                ]),
          ),
        ));
  }
}
