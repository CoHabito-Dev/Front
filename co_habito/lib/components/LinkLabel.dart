import 'package:flutter/material.dart';
import 'package:co_habito/tools/Go.dart';

class LinkLabel extends StatelessWidget{
  final String grey;
  final String blue;
  final Widget linkTo;
  LinkLabel({required this.grey, required this.blue, required this.linkTo});
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
          onPressed: (){
            Go.to(linkTo, context);
          }, 
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