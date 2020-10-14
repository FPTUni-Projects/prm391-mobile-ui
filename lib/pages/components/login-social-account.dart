import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class ButtonIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            SignInButton( 
                      Buttons.Google,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                ),
                      padding: EdgeInsets.all(8),
              ),
            SizedBox(height: 10 ),
            SignInButton(
                   Buttons.Facebook,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                   padding: EdgeInsets.all(16),
            ),
        ],
      ),
    );
  }
}