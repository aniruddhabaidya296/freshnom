// import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart' as CWS;
// import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';
import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/bottom_next.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';

class BodyWeight extends StatefulWidget {
  const BodyWeight({Key? key}) : super(key: key);

  @override
  _BodyWeightState createState() => _BodyWeightState();
}

class _BodyWeightState extends State<BodyWeight> {
  var weightController;

  Widget _buildItem(int i) {
    return Center(
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(80),
        child: Container(
          color: Colors.transparent,
          width: 160,
          height: 260,
          child: Center(
            child: Text(
              i.toString(),
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: "Roboto Mono",
                  // color: selectedElementColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Color selectedElementColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }, child: Builder(builder: (context) {
      return Scaffold(
          backgroundColor: Color(0xFFFBAF02),
          appBar: MyAppBar(
            title: "",
          ),
          body: Container(
              child: Column(children: [
            Caption(header: "What is your \nbody weight"),
            SizedBox(height: 20),
            Description(subject: "Drag wheel to tell us your weight"),
            Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Stack(children: [
                  Center(
                      child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.white),
                            shape: BoxShape.circle,
                          ))),
                  CircleListScrollView(
                      // renderChildrenOutsideViewport: true,
                      controller: weightController,
                      physics: CircleFixedExtentScrollPhysics(),
                      axis: Axis.horizontal,
                      clipToSize: true,
                      itemExtent: 150,
                      children: List.generate(150, _buildItem),
                      radius: MediaQuery.of(context).size.width / 2.6,
                      onSelectedItemChanged: (int index) => {
                            print("$weightController"),
                            print('Current index: $index'),
                            // setState(() => selectedElementColor = Colors.white)
                          }),
                ]))
          ])),
          bottomSheet: NextWidget(
            routeName: "/bodyheight",
          ));
    }));
  }
}
