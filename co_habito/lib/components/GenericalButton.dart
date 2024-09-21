import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class GenericalButton extends StatelessWidget{
  final String buttonText;
  final VoidCallback onPressed;
  final double width = 240;
  final double height = 51;
  final TextStyle textStyle = const TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.w500);
  final Color buttonColor = AppColors.Charcoal;
  final Color textButtonColor = Colors.white;
  final BorderRadius borderRadius = BorderRadius.circular(12);

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


