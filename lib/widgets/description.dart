import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';

class Description extends StatelessWidget {
  final String subject;
  final TextStyle style;

  const Description({
    Key? key,
    required this.subject,
    this.style = MyTextTheme.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: Text(
          "$subject",
          style: style,
        ));
  }
}
