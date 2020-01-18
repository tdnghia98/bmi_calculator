import 'package:bmi_calculator/constants.dart';
import 'bottom_button.dart';

import './reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('You result'),
            ReusableCard(
              color: kCardActiveColor,
              cardChild: Column(
                children: <Widget>[
                  Text('Normal'),
                  Text('22.1'),
                  Text('You have a normal body weight. Good job!'),
                ],
              ),
            ),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}
