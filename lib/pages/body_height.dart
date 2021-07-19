import 'package:flutter/material.dart';
import 'package:freshnom/main.dart';
import 'package:freshnom/pages/sign_up.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';
import 'package:freshnom/widgets/text_form_field.dart';

var feetValue, inchValue;
void updateHeight() {
  client.height = "$feetValue ft $inchValue in ";
  print("${client.height}");
}

class BodyHeight extends StatefulWidget {
  const BodyHeight({Key? key}) : super(key: key);

  @override
  _BodyHeightState createState() => _BodyHeightState();
}

class _BodyHeightState extends State<BodyHeight> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }, child: Builder(builder: (context) {
      return Scaffold(
          appBar: MyAppBar(
            title: "",
          ),
          backgroundColor: Color(0xFFFBAF02),
          bottomSheet: NextWidget(
            routeName: "/bodytype",
          ),
          body: SingleChildScrollView(
            child: Container(
                height: 600,
                // color: Colors.green,
                child: Column(children: [
                  Caption(header: "What is your \nheight"),
                  SizedBox(height: 20),
                  Description(subject: "Enter your height measurement"),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        MyHeightField(width: 60),
                      ])),
                ])),
          ));
    }));
  }
}
