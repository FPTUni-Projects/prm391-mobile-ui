import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/home_page.dart';

void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: HomePage(),
    );
  }

}
