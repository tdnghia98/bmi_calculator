import 'package:flutter/material.dart';
import 'constants.dart';

class CardChild extends StatelessWidget {
  CardChild({@required this.icon, this.cardTitle});

  final IconData icon;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          cardTitle,
          style: kTextStyleLabel,
        ),
      ],
    );
  }
}
