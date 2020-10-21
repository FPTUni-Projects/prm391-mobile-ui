import 'package:flutter/material.dart';

class FlagWidget extends StatelessWidget {
  final String value;
  final Color color;
  FlagWidget(this.value, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: this.color,
          borderRadius: BorderRadius.circular(15)
        ),
        margin: EdgeInsets.only(left: 8, top: 8),
        padding: EdgeInsets.fromLTRB(12, 8, 12, 8),

        child: Text(
          this.value,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
  }
}
