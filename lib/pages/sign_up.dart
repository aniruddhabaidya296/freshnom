import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/pages/verify_mobile_number.dart';
import 'package:freshnom/widgets/app_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }, child: Builder(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: MyAppBar(title: "SignUp"),
        body: Center(
          child: Column(
            children: [
              _UserName(),
              _UserEmailId(),
              _UserContactNumber(),
              SizedBox(height: 20),
              MaterialButton(
                  color: Color(0xFFFBAF02),
                  height: MediaQuery.of(context).size.height / 11,
                  minWidth: MediaQuery.of(context).size.width / 1.3,
                  child: Text(
                    "Create a account",
                    style: MyTextTheme.style,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyPhone()),
                    );
                  }),
            ],
          ),
        ),
      );
    }));
  }
}

class _UserName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          style: TextStyle(fontFamily: "VisbyCF"),
          autofocus: true,
          controller: nameController,
          decoration: InputDecoration(
            labelText: "Enter name",
          ),

          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value != null) {
              return 'Enter User Email';
            }
            return null;
          },
        ),
      ),
    );
  }
}

class _UserEmailId extends StatelessWidget {
  const _UserEmailId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Container(
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 10,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            style: TextStyle(fontFamily: "VisbyCF"),
            autofocus: true,
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email Id",
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value != null) {
                return 'Enter User Email';
              }
              return null;
            },
          ),
        ));
  }
}

class _UserContactNumber extends StatelessWidget {
  const _UserContactNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextFormField(
          style: TextStyle(fontFamily: "VisbyCF"),
          autofocus: true,
          controller: phoneController,
          decoration: InputDecoration(
            labelText: "Enter Contact Number",
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value != null) {
              return 'Enter User Email';
            }
            return null;
          },
        ),
      ),
    );
  }
}
