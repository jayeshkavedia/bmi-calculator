import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onClicked;
  RoundIconButton({@required this.icon, @required this.onClicked});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClicked,
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(icon),
    );
  }
}