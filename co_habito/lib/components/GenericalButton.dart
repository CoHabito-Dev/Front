import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class GenericalButton extends StatelessWidget{
  String buttonText;
  VoidCallback onPressed;
  double width = 240;
  double height = 51;
  TextStyle textStyle = const TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.w500);
  Color buttonColor = AppColors.Charcoal;
  Color textButtonColor = Colors.white;
  BorderRadius borderRadius = BorderRadius.circular(12);

  GenericalButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,         
          foregroundColor: textButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ), 
        ),
        child: Text(buttonText, style: textStyle),
      )
    );
  }
}


