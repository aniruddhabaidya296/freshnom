import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/pages/sign_up.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Text(
                  "Welcome \nTo DailyDash",
                  style: TextStyle(
                      fontFamily: "VisbyCF",
                      fontSize: 40,
                      fontWeight: FontWeight.w900),
                )),
          ),
          SizedBox(
            height: 310,
          ),
          MaterialButton(
              color: Colors.indigo[900],
              height: MediaQuery.of(context).size.height / 10,
              minWidth: MediaQuery.of(context).size.width / 1.3,
              child: Text(
                "Use Facebook",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "VisbyCF",
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {}),
          SizedBox(height: 20),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3)),
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 10,
              minWidth: MediaQuery.of(context).size.width / 1.3,
              child: Text(
                "Sign Up with email",
                style: MyTextTheme.style,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              }),
          SizedBox(height: 20),
          TextButton(
            child: Text(
              "SignIn",
              style: MyTextTheme.style,
            ),
            onPressed: () {},
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                  child: Text("Forgot Password?",
                      style: TextStyle(
                          fontFamily: 'VisbyCF',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red)),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => EmailSignUp()),
                    // );
                  }))
        ],
      ),
    )));
  }
}
