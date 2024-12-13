import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget{
  final String string;
  final double fontSize;
  final TextAlign? align;

  InputLabel({required this.string, required this.fontSize, this.align});
  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      textAlign: align ?? TextAlign.center,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: (((fontSize - 30) / 2) + 15 + fontSize) / fontSize,
        letterSpacing: 0.02,
        color: Color.fromARGB(255, 94, 94, 94)
        )
    );
  }
}