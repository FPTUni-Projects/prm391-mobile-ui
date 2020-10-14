import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_client_mobile/pages/components/button.dart';
import 'package:ui_client_mobile/pages/components/text-input.dart';

class ForgotPassword extends StatelessWidget {
  final String FontNameDefault = 'Metropolis';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(249, 249, 249, 1),
      statusBarIconBrightness: Brightness.dark,
    ));
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [IconButton(icon: new Icon(Icons.arrow_back_ios_sharp, size: 30, color: Colors.black,), onPressed: null)],
          ),
          //HEADER TITLE
          Container(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 60),
            child: Text("Forgot Passsword", style: Theme.of(context).textTheme.headline1),
          ),
          // INPUT FORM FIELD Email
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Column(
              children: <Widget>[
                Text("Please, enter your email address. You will receive a link to create a new password via email.", style: Theme.of(context).textTheme.subtitle1),
               SizedBox(height: 16),
                TextInputField("Email")
              ],
            ),
          ),
          // INPUT FORM FIELD Password
          //SMALL TEXT + ICON AND FORWARD TO LOGIN
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text("Not a valid email address. Should be your@email.com", style: TextStyle(
              fontFamily: FontNameDefault,
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color:Color.fromRGBO(240,31,14,1),
              height: 1.4,
            )),
          ),
          //BUTTPM SIGN UP
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: ButtonWidget("Send", (){}),
          ),
        ],
      ),
    );
  }
}