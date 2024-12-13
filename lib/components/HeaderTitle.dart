import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget{
  final String title;
  final double fontSize;
  final bool? bold;

  HeaderTitle({required this.title, required this.fontSize, this.bold});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: bold != null ? FontWeight.w700 : FontWeight.w600,
        height: (((fontSize - 30) / 2) + 15 + fontSize) / fontSize,
        letterSpacing: 0.02,
        color: Colors.white
      )
    );
  }
}