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
    return Row(
          children: [
            //SELECT SIZE IN PRODUCT
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin:
                    EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 16),
                child: ButtonTheme(
                  minWidth: 158.0,
                  height: 40.0,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                            color: Color.fromRGBO(34, 34, 34, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            // SELECT COLOR IN PRODUCT
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                child: ButtonTheme(
                  minWidth: 158.0,
                  height: 40.0,
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Black",
                          style: TextStyle(
                            color: Color.fromRGBO(34, 34, 34, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),

            //LIKE
            Flexible(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  margin:
                      EdgeInsets.only(left: 8, right: 16, top: 16, bottom: 16),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: LikeButton(
                      // Call back function
                      onTap: null,
                    ),
                  )),
            ),
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
