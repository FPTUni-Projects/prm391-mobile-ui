import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/common/style.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 4 / 5.5,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
        autoPlayAnimationDuration: Duration(milliseconds: 1500),
        autoPlayCurve: Curves.ease,
      ),
      items: [
        "assets/images/air.jpg",
        "assets/images/nike.png",
        "assets/images/nike3.jpg",
        "assets/images/nike4.jpg",
      ].map((item) {
        return Stack(
          children: <Widget>[
            Image.asset(
              '$item',
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 350, 0, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      "Fashion Sale",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: FontNameDefault,
                          fontSize: 45,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 13),
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 36.0,
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      color: Color.fromRGBO(219, 48, 34, 1),
                      child: Text("Checkout",
                          style: Theme.of(context).textTheme.subtitle2),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
