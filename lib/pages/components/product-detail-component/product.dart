import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/components/product-detail-component/01-image-detail-carousel.dart';
import 'package:ui_client_mobile/pages/components/product-detail-component/02-top-selection-section.dart';

class DetailProductState extends State<DetailProduct> {
  PageController _pageController;
  final String font = "Metropolis";

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(flex: 3, child: CarouselImageProductDetail()),
          Column(
            children: [
              //SELECT SIZE AND COLOR , TOP SELECTION IN PRODUCT
              SelectionProduct(),
            ],
          )
        ],
      ),
    );
  }
}

class DetailProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailProductState();
  }
}
