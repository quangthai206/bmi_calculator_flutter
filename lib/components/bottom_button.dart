import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onPressed, this.label});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70.0,
        color: Color(0xFFEA1556),
        child: Center(
          child: Text(
            label,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
