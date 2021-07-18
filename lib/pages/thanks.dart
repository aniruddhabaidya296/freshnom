import 'package:flutter/material.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  _ThanksPageState createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: NextWidget(
          routeName: "/recommend",
          textName: "Explore",
        ),
        appBar: MyAppBar(
          title: '',
        ),
        backgroundColor: Color(0xFFFBAF02),
        body: SingleChildScrollView(
            child: Container(
                // height: MediaQuery.of(context).size.height / 1.2,
                child: Column(children: [
          Caption(header: "Thanks for your details"),
          SizedBox(height: 25),
          Description(
              subject: "Love home cooked food?",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              )),
          SizedBox(height: 5),
          Description(
              subject:
                  "Homecooked is the perfect solution for your everyday problem"),
        ]))));
  }
}
