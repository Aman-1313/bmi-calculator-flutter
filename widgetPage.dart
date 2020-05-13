import 'package:flutter/material.dart';
import 'myCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'topCardData.dart';
import 'constants.dart';

enum gender{male,female}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedCard;
  int sliderValue = 180;
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
                Expanded(
                  child: MyCard(
                    myFunc: (){
                      setState(() {
                       selectedCard = gender.male;
                      });
                    },
                    color: selectedCard==gender.male?kPassiveColor:kActiveColor,
                    child: CardData(FontAwesomeIcons.mars,'Male'),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    myFunc: (){
                      setState(() {
                        selectedCard = gender.female;
                      });
                    },
                    color: selectedCard==gender.female?kPassiveColor:kActiveColor,
                    child: CardData(FontAwesomeIcons.venus,'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: Color(0xFF1D1F33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text('Height',style: TextStyle(fontSize: 18),)),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment:MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                    Text(sliderValue.toString(),
                      style: kTextStyle,
                    ),
                    SizedBox(width: 5,),
                    Text('cm'),
                  ],
                  ),
                  SliderTheme(
                   data: SliderTheme.of(context).copyWith(
                     activeTrackColor: Colors.white,
                     inactiveTrackColor: Color(0xFF8D8E98),
                     thumbColor: Colors.redAccent,
                     overlayColor: Color(0x70EB1555),
                     thumbShape: RoundSliderThumbShape(enabledThumbRadius:15),
                   ),
                    child: Slider(
                      value: sliderValue.toDouble(),
                      min: 120,
                      max: 300,
                      onChanged: (double value){
                        setState(() {
                          sliderValue = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.redAccent,
            width: double.infinity,
            height: 80,
            child: FlatButton(
              child: Text('CALCULATE',style: TextStyle(fontSize: 25,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}


