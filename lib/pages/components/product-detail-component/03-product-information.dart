import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class SelectionProductState extends State<SelectionProduct> {
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
    return Column(
      children: [


      ],
    );
  }
}

class SelectionProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SelectionProductState();
  }
}
