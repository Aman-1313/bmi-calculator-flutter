import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Color color;
  MyCard({@required this.color});
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
