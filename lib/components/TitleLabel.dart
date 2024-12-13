import 'package:flutter/material.dart';

class TitleLabel extends StatelessWidget{
  final String title;
  TitleLabel({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 36,
        fontWeight: FontWeight.w700,
        height: 54 / 36,
        letterSpacing: 0.02,
        color: Color(0xFF5E5E5E)
      ),
    );
  }
}