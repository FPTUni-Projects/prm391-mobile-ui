import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:ui_client_mobile/pages/common/style.dart';

class CartWidget extends StatelessWidget {
  final String FontNameDefault = 'Metropolis';
  final String imageLocation;

  CartWidget(this.imageLocation);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                this.imageLocation
              ),
              Container(
                padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                color: Color.fromRGBO(219, 48, 34, 1),
                child: Text(
                  "-20%",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.bottomRight,
                child: LikeButton(
                  // Call back function
                  onTap: null,
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("Evening Dress", style: smallTitleCard),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),

                      child: Text("Nike Jordan 2020", style: titleCard,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("15\$",
                        style: TextStyle(
                          color: Color.fromRGBO(219,48,34,1),
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
      ),
    );
  }
}
