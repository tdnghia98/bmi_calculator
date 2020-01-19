import 'package:bmi_calculator/screens/results_page.dart';

import './components/bottom_button.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './components/reusable_card.dart';
import 'card_child.dart';
import 'constants.dart';
import 'package:bmi_calculator/logic_components/bmi_calculator.dart';

enum Genre { Male, Female }

Genre selectedGenre;

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              ? kCardActiveColor
                              : kCardInactiveColor,
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
                              ? kCardActiveColor
                              : kCardInactiveColor,
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
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kTextStyleLabel,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kTextStyleNumber,
                          ),
                          Text('cm', style: kTextStyleLabel)
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 80,
                        max: 250,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      )
                    ],
                  ),
                  color: kCardActiveColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(
                        color: kCardActiveColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kTextStyleLabel,
                            ),
                            Text(
                              weight.toString(),
                              style: kTextStyleNumber,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: kCardActiveColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: kTextStyleLabel,
                            ),
                            Text(
                              age.toString(),
                              style: kTextStyleNumber,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomButton(
                buttonText: 'CALCULATE',
                onPressed: () {
                  BmiCalculator calculator =
                      BmiCalculator(height: this.height, weight: this.weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiScore: calculator.calculateBmiScore(),
                        resultText: calculator.generateResult(),
                        interpretationText: calculator.generateInterpretation(),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
