import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class ButtonIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SignInButton(
            Buttons.Google,
            onPressed: () {},
          ),
          SignInButton(
            Buttons.Facebook,
            onPressed: () {},
          ),
        ],
      ),

    );
  }
}