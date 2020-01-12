import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'card_child.dart';

const Color inactiveCardColor = Color(0xFF101427);
const Color activeCardColor = Color(0xFF1E1F33);
const Color redPinkAccentColor = Color(0xFFEA1556);
const bottomContainerHeight = 50.0;

enum Genre { Male, Female }

Genre selectedGenre;

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                          cardChild: CardChild(
                            icon: FontAwesomeIcons.mars,
                            cardTitle: 'MALE',
                          ),
                          color: selectedGenre == Genre.Male
                              ? activeCardColor
                              : inactiveCardColor,
                          onPressed: () {
                            setState(() {
                              selectedGenre = Genre.Male;
                            });
                          }),
                    ),
                    Expanded(
                      child: ReusableCard(
                          cardChild: CardChild(
                            icon: FontAwesomeIcons.venus,
                            cardTitle: 'FEMALE',
                          ),
                          color: selectedGenre == Genre.Female
                              ? activeCardColor
                              : inactiveCardColor,
                          onPressed: () {
                            setState(() {
                              selectedGenre = Genre.Female;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: inactiveCardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(color: inactiveCardColor),
                    ),
                    Expanded(
                      child: ReusableCard(color: inactiveCardColor),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                // Stretch width to full screen
                width: double.infinity,
                height: bottomContainerHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: redPinkAccentColor,
                ),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
