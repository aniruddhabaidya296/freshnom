import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/pages/body_weight.dart';

class NextWidget extends StatelessWidget {
  final String routeName;
  final String textName;

  const NextWidget({Key? key, required this.routeName, this.textName = "Next"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10, right: 10),
        color: Color(0xFFFBAF02),
        child: Container(
          height: 60,
          // color: Colors.green,
          padding: EdgeInsets.only(bottom: 10, right: 10),
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "$textName",
                style: TextStyle(
                    fontFamily: "VisbyCF",
                    fontWeight: FontWeight.w900,
                    fontSize: 25),
              ),
              SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, routeName);
                  },
                  icon: Icon(
                    Icons.east,
                    size: 40,
                  ))
            ],
          ),
        ));
  }
}
