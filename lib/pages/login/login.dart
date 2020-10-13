import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_client_mobile/pages/common/text-input.dart';
import 'package:ui_client_mobile/pages/login/button-icon.dart';
import 'package:ui_client_mobile/pages/login/button.dart';

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

          Container(
            padding: EdgeInsets.fromLTRB(16, 80, 16, 60),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Color.fromRGBO(34,34,34,1),
                fontWeight: FontWeight.w900,
                fontFamily: font,
                fontSize: 34.0,
                )
              ),

            ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextInputField("Name"),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: TextInputField("Email"),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: TextInputField("Password"),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                    child: Text("Already have a account ?",
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
          Container(
            child: ButtonWidget("Sign Up"),
          ),
          ButtonIconWidget(),
        ],
      ),
    );
  }
}