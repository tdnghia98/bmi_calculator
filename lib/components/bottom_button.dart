import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @required this.onPressed,
    @required this.buttonText,
  });

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        // Stretch width to full screen
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: kColorRedPinkAccent,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kTextStyleBottomButton,
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
