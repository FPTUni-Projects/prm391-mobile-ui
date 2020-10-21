import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/common/style.dart';
import 'package:ui_client_mobile/pages/components/scroll-snap-list.dart';
import 'package:ui_client_mobile/pages/components/carousel-widget.dart';

class MainWidget extends StatelessWidget {
  final String font = "Metropolis";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          new Column(
            children: [
              // SLIDE
              Container(
                child: CarouselWidget(),
              ),
              //----------------------------------------------------------------
              //HEADER TITLE
              Container(
                margin: EdgeInsets.only(left: 16.0),
                // TEXT
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sale", style: titleHeader),
                          Text("You’ve never seen it before!",
                              style: smallTitleCard),
                        ],
                      ),
                    ),

                    //VIEW ALL PRODUCT
                  Container(
                    margin:EdgeInsets.all(16),
                    child: GestureDetector(
                        child: Text("View all",
                            style: TextStyle(
                                color: Color.fromRGBO(34, 34, 34, 1))),
                        onTap: () {}),
                    ),
                  ],
                ),
              ),
              // BODY MAIN PAGE
              Container(
                height: 370,
                color: Colors.white,
                child: ScrollSnapList(),
              ),

              //----------------------------------------------------------------
              Container(
                margin: EdgeInsets.only(left: 16.0),
                // TEXT
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sale", style: titleHeader),
                          Text("You’ve never seen it before!",
                              style: smallTitleCard),
                        ],
                      ),
                    ),

                    //VIEW ALL PRODUCT
                    Container(
                      margin:EdgeInsets.all(16),
                      child: GestureDetector(
                          child: Text("View all",
                              style: TextStyle(
                                  color: Color.fromRGBO(34, 34, 34, 1))),
                          onTap: () {}),
                    ),
                  ],
                ),
              ),
              Container(
                height: 370,
                color: Colors.white,
                child: ScrollSnapList(),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
