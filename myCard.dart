import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  @override
  final Color color;
  final Widget child;
  final Function myFunc;
  MyCard({this.myFunc,@required this.color,this.child});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunc,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
