import 'package:flutter/material.dart';
import 'package:makeupstores/constants.dart';

class colorDot extends StatelessWidget {
  const colorDot({
    super.key,
    required this.fillColor,
    required this.isSellected,
  });
  final Color fillColor;
  final bool isSellected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSellected ? kTextLightColor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
