import 'dart:convert';
import 'text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/models/user.dart';
import 'package:freshnom/pages/body_height.dart';
import 'package:http/http.dart' as http;
import 'package:freshnom/pages/body_weight.dart';
import 'package:freshnom/pages/sign_up.dart';

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
                  onPressed: () async {
                    if (routeName == "/bodytype") {
                      feetValue = feetValueController.text;
                      inchValue = inchValueController.text;
                      updateHeight();
                    }
                    if (textName == "Explore") {
                      await _callUpdateClient(client);
                    }
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

  Future<http.Response> _callUpdateClient(FreshnomUser client) {
    return http.put(Uri.parse('http://192.168.31.227:3306/freshnom/user'),
        body: jsonEncode(<String, dynamic>{
          'Id': client.id,
          'Gender': client.gender,
          'Weight': client.weight,
          'Height': client.height,
          'BodyType': client.bodytype,
          'PreferredFood': client.food
        }));
  }
}
