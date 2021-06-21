import 'constants.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_container.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiValue;
  final String bmiInformation;
  ResultsPage({@required this.bmiResult, @required this.bmiValue, @required this.bmiInformation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kCardActiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiValue,
                    style: kBMIValueTextStyle,
                  ),
                  Text(
                    bmiInformation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTapped: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
