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
          //DECORATE WRAPPER FOR TEXT INPUT
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
          style: Theme.of(context).textTheme.subtitle1,
          // DECORATE INPUT
          decoration: InputDecoration(
            labelText: this.title,
            contentPadding:   EdgeInsets.fromLTRB(12.0, 15.0, 12.0, 15.0),
            border: InputBorder.none,
            ),
          ),
        );
      }
    }