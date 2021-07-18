import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Colors.black,
      ),
      title: Text("$title", style: MyTextTheme.style),
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
