import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselImageProductDetailState extends State<CarouselImageProductDetail> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          aspectRatio: 5/4,
          viewportFraction: 1,
      ),
      items: [
        "assets/images/product/product1.jpg",
        "assets/images/product/product2.jpg",
        "assets/images/product/product3.jpg",
      ].map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: 500,
                child: Image.asset('$item', fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }
}

class CarouselImageProductDetail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CarouselImageProductDetailState();
  }

}
