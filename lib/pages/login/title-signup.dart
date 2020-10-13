import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TitleWidget extends StatelessWidget {
  final String title;
  final String font = "Metropolis";

  TitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(this.title, style: TextStyle(
        color: Color.fromRGBO(34,34,34,1),
        fontSize: 14.0,
        fontFamily: font,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}