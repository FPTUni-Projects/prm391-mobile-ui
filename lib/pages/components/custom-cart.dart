import 'package:flutter/material.dart';

import 'cart.dart';

class CustomCartState extends State<CustomCart> {
  final String urlImage;

  CustomCartState(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Expanded(
        child: CartWidget(this.urlImage),
      ),
    );
  }
}

class CustomCart extends StatefulWidget {
  final String urlImage;
  CustomCart(this.urlImage);

  @override
  State<StatefulWidget> createState() {
    return CustomCartState(this.urlImage);
  }
}
