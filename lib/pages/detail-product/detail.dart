import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_client_mobile/pages/components/product-detail-component/product.dart';

class ProductState extends State<Product> {
  int _currentIndex = 0;
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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(249, 249, 249, 1),
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1),
        actions: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_sharp,
                    color: Color.fromRGBO(34, 34, 34, 1),
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                Text(
                  "Short Dress",
                  style: TextStyle(
                    color: Color.fromRGBO(34, 34, 34, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: font,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Color.fromRGBO(34, 34, 34, 1),
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: DetailProduct(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        padding: EdgeInsets.all(16),
        child: ButtonTheme(
          minWidth: 343.0,
          height: 48.0,
          child: RaisedButton(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
            color: Color.fromRGBO(219,48,34,1),
            child: Text("ADD TO CART", style: Theme.of(context).textTheme.subtitle2),
            onPressed: (){},
          ),
        ),
      )
    );

  }
}

class Product extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductState();
  }
}
