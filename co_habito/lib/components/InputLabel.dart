import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget{
  final String string;
  InputLabel({required this.string});
  @override
  Widget build(BuildContext context) {
    return Text(
      string,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 21 / 14,
        letterSpacing: 0.02,
        color: Color.fromARGB(255, 94, 94, 94)
        )
      );
  }
}