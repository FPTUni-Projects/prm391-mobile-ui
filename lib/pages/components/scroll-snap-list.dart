import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/components/custom-cart.dart';

import 'cart.dart';

class ScrollSnapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomCart("assets/images/air.jpg"),
          CustomCart("assets/images/air.jpg"),
          CustomCart("assets/images/air.jpg"),
          CustomCart("assets/images/air.jpg"),
          CustomCart("assets/images/air.jpg"),
        ],
      ),
    );
  }
}
