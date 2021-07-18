import 'package:flutter/material.dart';
import 'package:freshnom/Themes/text_themes.dart';
import 'package:freshnom/widgets/app_bar.dart';
import 'package:freshnom/widgets/caption.dart';
import 'package:freshnom/widgets/description.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'gender_select.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }, child: Builder(builder: (context) {
      return Scaffold(
          appBar: MyAppBar(title: ''),
          body: Container(
              padding: EdgeInsets.only(top: 40, left: 10, right: 10),
              child: Column(

                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Caption(header: "Verify your \nmobile number"),
                    SizedBox(height: 20),
                    Description(
                        subject: "Enter one time password sent to 9999999999"),
                    SizedBox(height: 20),
                    OTPTextField(
                      length: 4,
                      width: MediaQuery.of(context).size.width / 1.3,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 55,
                      fieldStyle: FieldStyle.underline,
                      outlineBorderRadius: 15,
                      style: TextStyle(fontSize: 17),
                      onChanged: (pin) {
                        print("Changed: " + pin);
                      },
                      onCompleted: (pin) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GenderSelect()),
                        );
                        print("Completed: " + pin);
                      },
                    ),
                  ])));
    }));
  }
}
