// @dart=2.9
import 'package:flutter/material.dart';
import 'package:freshnom/pages/auth_page.dart';
import 'package:freshnom/pages/body_height.dart';
import 'package:freshnom/pages/body_type.dart';
import 'package:freshnom/pages/body_weight.dart';
import 'package:freshnom/pages/food_type.dart';
import 'package:freshnom/pages/recommend_diet.dart';
import 'package:freshnom/pages/thanks.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "VisbyCF",
        appBarTheme: AppBarTheme(color: Colors.black),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.black38),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: IntroScreen(),
      routes: {
        '/bodyweight': (context) => BodyWeight(),
        '/bodyheight': (context) => BodyHeight(),
        '/bodytype': (context) => BodyType(),
        '/foodtype': (context) => FoodType(),
        '/thanks': (context) => ThanksPage(),
        '/recommend': (context) => RecommendPage()
      },
    );
  }
}

class IntroScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return SplashScreen(
        imageBackground: AssetImage("assets/images/splashscreen.png"),
        navigateAfterSeconds: AuthPage(),
        seconds: 5,
        loaderColor: Colors.transparent);
  }
}
