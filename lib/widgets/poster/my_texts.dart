import 'package:flutter/material.dart';
import 'package:tech_blog/constants/my_colors.dart';

class MyTexts extends StatelessWidget {
  MyTexts({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: SolidColors.posterTxt, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
