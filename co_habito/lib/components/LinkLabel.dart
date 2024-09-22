import 'package:flutter/material.dart';

class LinkLabel extends StatelessWidget{
  final String grey;
  final String blue;
  LinkLabel({required this.grey, required this.blue});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          grey,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 21 / 14,
            letterSpacing: 0.02,
            color: Color.fromARGB(255, 94, 94, 94)
          )
        ),
        TextButton(
          onPressed: null, 
          child: Text(
            blue,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 21 / 14,
              letterSpacing: 0.02,
              color: Color(0xFF336699)
            )
          )
        )
      ]
    );
  }
}