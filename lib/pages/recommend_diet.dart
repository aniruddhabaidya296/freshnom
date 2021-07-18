import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';
import 'package:freshnom/widgets/gradient_image_box.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: '',
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Caption(header: "Our recommended diet plans"),
            SizedBox(height: 40),
            GradientImageBox(
                path: "assets/images/veg.jpg",
                heading: "Vegetarian",
                details: "7 diet plans"),
            SizedBox(height: 40),
            GradientImageBox(
                path: "assets/images/nonveg.png",
                heading: "Non-Vegetarian",
                details: "11 diet plans"),
          ],
        ))));
  }
}
