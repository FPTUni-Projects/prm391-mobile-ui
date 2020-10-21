import 'package:flutter/material.dart';
import 'package:ui_client_mobile/pages/common/style.dart';
import 'package:ui_client_mobile/pages/detail-product/detail.dart';



void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: HeaderTextStyle,
          subtitle1: InputTextStyle,
          subtitle2: ButtonTextStyle,
          caption: SmallTextStyle,
          headline6: titleCard,
          headline5: titleHeader,
        ),
      ),
      home: Product(),
    );
  }
}


