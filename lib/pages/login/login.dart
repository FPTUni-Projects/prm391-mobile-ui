import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_client_mobile/pages/components/button.dart';
import 'package:ui_client_mobile/pages/components/login-social-account.dart';
import 'package:ui_client_mobile/pages/components/text-input.dart';

class Login extends StatelessWidget {
  final String font = "Metropolis";
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
            child: Text("Login", style: Theme.of(context).textTheme.headline1),
          ),
          // INPUT FORM FIELD Email
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextInputField("Email"),
          ),
          // INPUT FORM FIELD Password
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextInputField("Password"),
          ),
          //SMALL TEXT + ICON AND FORWARD TO LOGIN
          Container(
            padding: EdgeInsets.all(16),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    child: Text("For got your password?",
                        style: TextStyle(
                            color: Color.fromRGBO(34,34,34,1),
                            fontSize: 14.0,
                            fontFamily: font,
                            fontWeight: FontWeight.w700
                        )
                    ),
                    onTap: () {
                      // OnCLick
                    }
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 0,0, 0),
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    color: Color.fromRGBO(219,48,34,1),
                  ),
                )
              ],
            ),
          ),
          //BUTTPM SIGN UP
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: ButtonWidget("Sign Up", (){}),
          ),
          ButtonIconWidget(),
        ],
      ),
    );
  }
}