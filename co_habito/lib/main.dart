import 'package:co_habito/components/OULabel.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Center(
        child: OULabel()/*Text(
          'Hello, World!',
          style: TextStyle(
            color: AppColors.Lapis_Lazuli,
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        )*/,
      ),
    ),
  ));
}
