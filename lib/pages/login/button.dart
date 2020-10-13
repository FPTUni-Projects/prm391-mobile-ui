import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  final String title;

  ButtonWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        ),
      padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
      child : SizedBox.fromSize(
        size: Size(343, 48),
        child: RaisedButton(
            color: Color.fromRGBO(219,48,34,1),
            child: Text(this.title, style: TextStyle(color: Colors.white)),
        onPressed: () {
              // Action when you clicked
        },
      ),
      )
    );
  }
}