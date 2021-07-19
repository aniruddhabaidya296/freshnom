import 'package:circle_button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:freshnom/main.dart';
import 'package:freshnom/pages/body_weight.dart';
import 'package:freshnom/pages/sign_up.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/circle.dart';
import 'package:freshnom/widgets/description.dart';

class GenderSelect extends StatefulWidget {
  const GenderSelect({Key? key}) : super(key: key);

  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  var gender;
  Color maleColor = Colors.transparent;
  Color femaleColor = Colors.transparent;
  Color otherColor = Colors.transparent;
  Color femaleTextColor = Colors.black;
  Color maleTextColor = Colors.black;
  Color otherTextColor = Colors.black;
  Color maleBorderColor = Colors.black;
  Color femaleBorderColor = Colors.black;
  Color otherBorderColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: '',
        ),
        backgroundColor: Color(0xFFFBAF02),
        body: Container(
          height: MediaQuery.of(context).size.height / 1.3,
          child: Column(
            children: [
              Caption(header: "Select your gender"),
              SizedBox(height: 20),
              Description(subject: "Tap to bubble to Select gender"),
              SizedBox(height: 100),
              Container(
                  width: 300,
                  height: 300,
                  child: Stack(
                    fit: StackFit.loose,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          left: 150,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    setFemaleColors(),
                                    client.gender = "Female"
                                  }),
                              print("${client.gender}"),
                            },
                            width: 150,
                            height: 150,
                            borderColor: femaleBorderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: femaleColor,
                            child: Text(
                              'Female',
                              style: TextStyle(
                                  color: femaleTextColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          )),
                      Positioned(
                          top: 10,
                          child: CircleButton(
                            onTap: () => {
                              setState(() =>
                                  {setMaleColors(), client.gender = "Male"}),
                              print("${client.gender}")
                            },
                            width: 150,
                            height: 150,
                            borderColor: maleBorderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: maleColor,
                            child: Text(
                              'Male',
                              style: TextStyle(
                                  color: maleTextColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          )),
                      Positioned(
                          top: 134,
                          left: 83,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.gender = "Other",
                                    setOtherColors(),
                                  }),
                              print("${client.gender}")
                            },
                            width: 150,
                            height: 150,
                            borderColor: otherBorderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: otherColor,
                            child: Text(
                              'Other',
                              style: TextStyle(
                                  color: otherTextColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          )),
                    ],
                  )),
            ],
          ),
        ),
        bottomSheet: NextWidget(
          routeName: "/bodyweight",
        )
        // bottomNavigationBar: NextWidget(),
        );
  }

  setFemaleColors() {
    femaleColor = Colors.white;
    femaleTextColor = Color(0xFFFBAF02);
    femaleBorderColor = Colors.transparent;
    maleColor = Colors.transparent;
    maleTextColor = Colors.black;
    maleBorderColor = Colors.black;
    otherColor = Colors.transparent;
    otherTextColor = Colors.black;
    otherBorderColor = Colors.black;
  }

  setMaleColors() {
    femaleColor = Colors.transparent;
    femaleTextColor = Colors.black;
    femaleBorderColor = Colors.black;
    maleColor = Colors.white;
    maleTextColor = Color(0xFFFBAF02);
    maleBorderColor = Colors.transparent;
    otherColor = Colors.transparent;
    otherTextColor = Colors.black;
    otherBorderColor = Colors.black;
  }

  setOtherColors() {
    femaleColor = Colors.transparent;
    femaleTextColor = Colors.black;
    femaleBorderColor = Colors.black;
    maleColor = Colors.transparent;
    maleTextColor = Colors.black;
    maleBorderColor = Colors.black;
    otherColor = Colors.white;
    otherTextColor = Color(0xFFFBAF02);
    otherBorderColor = Colors.transparent;
  }
}
