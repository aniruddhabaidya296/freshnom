import 'dart:ui';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/pages/sign_up.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';
import 'package:freshnom/widgets/gradient_image_box.dart';
import 'package:http/http.dart';

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
              child: Column(children: [
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
            SizedBox(height: 20),
            Container(
                height: 90,
                width: MediaQuery.of(context).size.width / 1.3,
                alignment: Alignment.bottomRight,
                // color: Colors.green,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: FloatingActionButton(
                        backgroundColor: Color(0xFFFBAF02),
                        child: Icon(Icons.account_circle),
                        onPressed: () async {
                          var details = await _getClientDetails();

                          return showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    backgroundColor: Colors.yellow[100],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    title: Text("Details"),
                                    content: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: <Widget>[
                                        Text("${details.body}"),
                                        SizedBox(height: 60),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(width: 20),
                                            ElevatedButton(
                                              child: Text("Ok"),
                                              onPressed: () {
                                                Navigator.of(ctx).pop();
                                              },
                                              style: ButtonStyle(
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                  )),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color(0xFFFBAF02)),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          5)),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ));
                        })))
          ])),
        ));
  }
}

Future<http.Response> _getClientDetails() {
  return http.get(
      Uri.parse('http://192.168.31.227:3306/freshnom/user?Id=${client.id}'));
}
