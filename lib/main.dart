import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/common/style.dart';
import 'package:ui_client_mobile/pages/forgot-password/forgot-password.dart';
import 'package:ui_client_mobile/pages/login/login.dart';
import 'package:ui_client_mobile/pages/signup/signup.dart';


void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: HeaderTextStyle,
          subtitle1: InputTextStyle,
          subtitle2: ButtonTextStyle,
          caption: SmallTextStyle,

        ),
      ),
    );
  }
}

