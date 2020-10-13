import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/login/title-signup.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final String font = "Metropolis";

  ButtonWidget(this.title);

  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            TitleWidget("Or sign up with social account"),
            RaisedButton(onPressed: null),
          ],
        ),
      );

  }
}