import 'package:flutter/material.dart';

class SecionTitle extends StatelessWidget{
  final String title;
  SecionTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 30 / 20,
        letterSpacing: 0.02,
        color: Color(0xFF5E5E5E)
      ),
    );
  }
}