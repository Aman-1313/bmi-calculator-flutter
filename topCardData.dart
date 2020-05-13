import 'package:flutter/material.dart';
class CardData extends StatelessWidget {
  final IconData icon;
  final String text;
  CardData(this.icon,this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color:Colors.white,
        ),
        SizedBox(height: 15,),
        Text(text,style: TextStyle(fontSize: 18.0),),
      ],
    );
  }
}