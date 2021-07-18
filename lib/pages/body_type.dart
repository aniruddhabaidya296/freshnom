import 'package:circle_button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:freshnom/Themes/circle_theme.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';

class BodyType extends StatefulWidget {
  const BodyType({Key? key}) : super(key: key);

  @override
  _BodyTypeState createState() => _BodyTypeState();
}

class _BodyTypeState extends State<BodyType> {
  Widget show = SizedBox(height: 10);
  CircleColors ecto = new CircleColors();
  CircleColors meso = new CircleColors();
  CircleColors endo = new CircleColors();

  @override
  Widget build(BuildContext context) {
    Widget ectoCont = Container(
        // color: Colors.red,
        width: MediaQuery.of(context).size.width / 1.3,
        height: 80,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.accessibility_new),
          SizedBox(width: 10),
          Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Text("You're skinny and difficult to gain weight"))
        ]));
    return Scaffold(
        bottomSheet: NextWidget(routeName: "/foodtype"),
        appBar: MyAppBar(
          title: '',
        ),
        backgroundColor: Color(0xFFFBAF02),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Caption(header: "What is your body type?"),
                    SizedBox(height: 20),
                    Description(
                        subject: "Tap to bubble to select your body type"),
                    SizedBox(height: 40),
                    SingleChildScrollView(
                        child: Container(
                      // color: Colors.green,
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 300,
                      child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          children: [
                            Positioned(
                                left: 150,
                                child: CircleButton(
                                  onTap: () => {
                                    print("endomorph"),
                                    setState(() => {
                                          endo.selectedColors(),
                                          ecto.initColors(),
                                          meso.initColors(),
                                          show = SizedBox(height: 10)
                                        }),
                                  },
                                  width: 150,
                                  height: 150,
                                  borderColor: endo.borderColor,
                                  borderWidth: 2.0,
                                  borderStyle: BorderStyle.solid,
                                  backgroundColor: endo.color,
                                  child: Text(
                                    'endomorph',
                                    style: TextStyle(
                                        color: endo.textColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                )),
                            Positioned(
                                top: 10,
                                child: CircleButton(
                                  onTap: () => {
                                    print("ectomorph"),
                                    setState(() => {
                                          ecto.selectedColors(),
                                          endo.initColors(),
                                          meso.initColors(),
                                          show = ectoCont
                                        })
                                  },
                                  width: 150,
                                  height: 150,
                                  borderColor: ecto.borderColor,
                                  borderWidth: 2.0,
                                  borderStyle: BorderStyle.solid,
                                  backgroundColor: ecto.color,
                                  child: Text(
                                    'ectomorph',
                                    style: TextStyle(
                                        color: ecto.textColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                )),
                            Positioned(
                                top: 134,
                                left: 83,
                                child: CircleButton(
                                  onTap: () => {
                                    print("mesomorph"),
                                    setState(() => {
                                          meso.selectedColors(),
                                          ecto.initColors(),
                                          endo.initColors(),
                                          show = SizedBox(height: 10)
                                        }),
                                  },
                                  width: 150,
                                  height: 150,
                                  borderColor: meso.borderColor,
                                  borderWidth: 2.0,
                                  borderStyle: BorderStyle.solid,
                                  backgroundColor: meso.color,
                                  child: Text(
                                    'mesomorph',
                                    style: TextStyle(
                                        color: meso.textColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20),
                                  ),
                                )),
                          ]),
                    )),
                    show
                  ],
                ),
              )),
        )
        // bottomNavigationBar: NextWidget(),
        );
  }
}
