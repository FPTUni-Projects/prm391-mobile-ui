import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback callback;

  ButtonWidget(this.title, this.callback);
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
          minWidth: 343.0,
          height: 48.0,
        child: RaisedButton(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            color: Color.fromRGBO(219,48,34,1),
            child: Text(this.title, style: Theme.of(context).textTheme.subtitle2),
        onPressed: callback,
      ),
    );
  }
}