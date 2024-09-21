import 'package:flutter/material.dart';
import 'AppColors.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(
            color: AppColors.Lapis_Lazuli,
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ));
}
