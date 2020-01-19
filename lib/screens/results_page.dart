import 'package:bmi_calculator/constants.dart';
import '../components/bottom_button.dart';

import '../components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiScore,
      @required this.interpretationText,
      @required this.resultText});

  final String bmiScore, resultText, interpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your result',
                    style: kTextStyleHeading1,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: ReusableCard(
                color: kCardActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kTextStyleDiagnoseLabel,
                    ),
                    Text(
                      bmiScore,
                      style: kTextStyleBMIScore,
                    ),
                    Text(
                      interpretationText,
                      style: kTextStyleBody,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonText: 'RECALCULATE',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
