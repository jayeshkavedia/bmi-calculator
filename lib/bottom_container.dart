import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTapped;
  final String buttonTitle;
  BottomButton({@required this.buttonTitle, @required this.onTapped});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomTextStyle,
          ),
        ),
        width: double.infinity,
        height: kContainerHeight,
        color: kBottomContainer,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}