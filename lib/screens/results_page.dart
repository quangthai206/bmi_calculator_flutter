import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 30.0,
        ),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kLabelTextStyle.copyWith(color: Color(0xFF22E67B)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: kLabelTextStyle.copyWith(fontSize: 19.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '18,5 - 25 kg/m2',
                    style: kLabelTextStyle.copyWith(
                        color: Colors.white, fontSize: 19.0),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    interpretation,
                    style: kLabelTextStyle.copyWith(
                        color: Colors.white, fontSize: 19.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      padding: EdgeInsets.all(20.0),
                      color: Color(0xFF181A2E),
                      onPressed: () {},
                      child: Text(
                        'SAVE RESULT',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xDDFFFFFF),
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ],
              ),
              color: Color(0xFF1D1F33),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          BottomButton(
            label: 'RE-CALCULATE YOUR BMI',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
