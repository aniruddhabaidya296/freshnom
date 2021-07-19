import 'package:circle_button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:freshnom/Themes/circle_theme.dart';
import 'package:freshnom/pages/sign_up.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';

class FoodType extends StatefulWidget {
  const FoodType({Key? key}) : super(key: key);

  @override
  _FoodTypeState createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  CircleColors salads = new CircleColors();
  CircleColors soups = new CircleColors();
  CircleColors meals = new CircleColors();
  CircleColors juices = new CircleColors();
  CircleColors heavyMeals = new CircleColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBAF02),
        appBar: MyAppBar(
          title: '',
        ),
        bottomSheet: NextWidget(routeName: "/thanks"),
        body: SingleChildScrollView(
          child: Container(
              // color: Colors.green,
              child: Column(
            children: [
              Caption(
                  header: "Last question, what is your preffered food type?"),
              SizedBox(height: 20),
              Container(
                  width: 300,
                  height: 300,
                  child: Stack(
                    fit: StackFit.loose,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          left: 12,
                          bottom: 100,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.food = "Salads",
                                    salads.selectedColors(),
                                    juices.initColors(),
                                    heavyMeals.initColors(),
                                    soups.initColors(),
                                    meals.initColors(),
                                  }),
                              print("client.food: ${client.food}")
                            },
                            width: 100,
                            height: 100,
                            borderColor: salads.borderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: salads.color,
                            child: Text(
                              'Salads',
                              style: TextStyle(
                                  color: salads.textColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                          )),
                      Positioned(
                          top: 55,
                          left: 100,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.food = "Soups",
                                    soups.selectedColors(),
                                    juices.initColors(),
                                    salads.initColors(),
                                    heavyMeals.initColors(),
                                    meals.initColors(),
                                  }),
                              print("client.food: ${client.food}")
                            },
                            width: 100,
                            height: 100,
                            borderColor: soups.borderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: soups.color,
                            child: Text(
                              'Soups',
                              style: TextStyle(
                                  color: soups.textColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                          )),
                      Positioned(
                          bottom: 45,
                          left: 93,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.food = "Juices",
                                    juices.selectedColors(),
                                    heavyMeals.initColors(),
                                    salads.initColors(),
                                    soups.initColors(),
                                    meals.initColors(),
                                  }),
                              print("client.food: ${client.food}")
                            },
                            width: 100,
                            height: 100,
                            borderColor: juices.borderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: juices.color,
                            child: Text(
                              'Juices',
                              style: TextStyle(
                                  color: juices.textColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                          )),
                      Positioned(
                          bottom: 89,
                          right: 18,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.food = "Heavy Meals",
                                    heavyMeals.selectedColors(),
                                    juices.initColors(),
                                    salads.initColors(),
                                    soups.initColors(),
                                    meals.initColors(),
                                  }),
                              print("client.food: ${client.food}")
                            },
                            width: 100,
                            height: 100,
                            borderColor: heavyMeals.borderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: heavyMeals.color,
                            child: Text(
                              'Heavy \nMeals',
                              style: TextStyle(
                                  color: heavyMeals.textColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                          )),
                      Positioned(
                          top: 11,
                          right: 12,
                          child: CircleButton(
                            onTap: () => {
                              setState(() => {
                                    client.food = "Meals",
                                    juices.initColors(),
                                    salads.initColors(),
                                    soups.initColors(),
                                    meals.selectedColors(),
                                    heavyMeals.initColors()
                                  }),
                              print("client.food: ${client.food}")
                            },
                            width: 100,
                            height: 100,
                            borderColor: meals.borderColor,
                            borderWidth: 2.0,
                            borderStyle: BorderStyle.solid,
                            backgroundColor: meals.color,
                            child: Text(
                              'Meals',
                              style: TextStyle(
                                  color: meals.textColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                          )),
                    ],
                  ))
            ],
          )),
        ));
  }
}
