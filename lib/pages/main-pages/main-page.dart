import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/common/style.dart';
import 'package:ui_client_mobile/pages/components/scroll-snap-list.dart';
import 'package:ui_client_mobile/pages/components/carousel-widget.dart';

class MainWidget extends StatelessWidget {
  final String font = "Metropolis";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:  SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              new Column(
                  children: [
                    Container(
                      child: CarouselWidget(),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 16.0),
                      // child: Align(
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Sale", style: titleHeader),
                            Text("You’ve never seen it before!", style: smallTitleCard),
                          ],
                        ),
                      ),
                    Container(
                        height: 400,
                        child: ScrollSnapList(),
                    ),
                  ],
                ),
              ],
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile')
            )
          ],
        )
      );
  }
}