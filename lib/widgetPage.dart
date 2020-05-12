import 'package:flutter/material.dart';
import 'myCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                MyCard(
                  color: Color(0xFF1D1F33),
                ),
                MyCard(
                  color: Color(0xFF1D1F33),
                ),
              ],
            ),
          ),
          MyCard(
            color: Color(0xFF1D1F33),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                MyCard(
                  color: Color(0xFF1D1F33),
                ),
                MyCard(
                  color: Color(0xFF1D1F33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
