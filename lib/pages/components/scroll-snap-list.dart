import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class ScrollSnapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            margin: EdgeInsets.all(16),
            child: CartWidget("assets/images/air.jpg"),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),

          Container(
            child: Container(
              width: 160,
              margin: EdgeInsets.all(16),
              child: CartWidget("assets/images/air.jpg"),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),

          Container(
           child: Container(
              width: 160,
              margin: EdgeInsets.all(16),
              child: CartWidget("assets/images/air.jpg"),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              width: 160,
              margin: EdgeInsets.all(16),
              child: CartWidget("assets/images/air.jpg"),
              decoration: BoxDecoration(

                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: Container(
              width: 140,
              margin: EdgeInsets.all(16),
              child: CartWidget("assets/images/air.jpg"),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
