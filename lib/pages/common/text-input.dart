import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String font = "Metropolis";
  final String title;

  TextInputField (this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.circular(4),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          )],
        ),
        child: TextFormField(
          style: TextStyle(
            color: Color.fromRGBO(45,45,45,1),
            fontSize: 18.0,
            height: 1.4,
            fontFamily:font,

            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            labelText: this.title,
            contentPadding:   EdgeInsets.fromLTRB(18.0, 22.0, 18.0, 22.0),
            border: InputBorder.none,
            ),

          ),
        );
      }
    }