import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'main-page.dart';

class HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  PageController _pageController;

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
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(child: MainWidget()),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
            Container(color: Colors.blueAccent,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
              activeColor: Color.fromRGBO(219,48,34,1),
          ),
          BottomNavyBarItem(
              title: Text('Shop'),
              icon: Icon(Icons.shopping_cart),
              activeColor: Color.fromRGBO(219,48,34,1),
          ),
          BottomNavyBarItem(
              title: Text('Bag'),
              icon: Icon(Icons.shopping_bag),
              activeColor: Color.fromRGBO(219,48,34,1),
          ),
          BottomNavyBarItem(
              title: Text('Favorites'),
              icon: Icon(Icons.add_circle_outline),
              activeColor: Color.fromRGBO(219,48,34,1),
          ),
          BottomNavyBarItem(
              title: Text('Profiles'),
              icon: Icon(Icons.account_circle_rounded),
              activeColor: Color.fromRGBO(219,48,34,1),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return new HomePageState();
  }
}
