import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:ui_client_mobile/pages/common/style.dart';
import 'package:ui_client_mobile/pages/components/flag.dart';

class CartWidget extends StatelessWidget {
  final String FontNameDefault = 'Metropolis';
  final String imageLocation;

  CartWidget(this.imageLocation);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(this.imageLocation),
            ),
            FlagWidget("-20%",  Color.fromRGBO(219, 48, 34, 1)),
            // ICON LIKE
            Positioned(
                top: 160,
                left: 105,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Align(
                      child: LikeButton(
                        padding: EdgeInsets.all(7),
                        // Call back function
                        onTap: null,
                      ),
                    ))),
          ],
        ),
        // BODY CART INFORMATION
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  child: Text("Evening Dress", style: smallTitleCard),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text(
                    "Nike Jordan 2020",
                    style: titleCard,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    "15\$",
                    style: TextStyle(
                      color: Color.fromRGBO(219, 48, 34, 1),
                      fontFamily: FontNameDefault,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
