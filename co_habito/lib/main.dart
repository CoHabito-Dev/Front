import 'package:co_habito/components/HeaderTitle.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Center(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.Carolina_Blue,
            title: HeaderTitle(title: "CoHábito", fontSize: 40,),
          ),
        )/*Text(
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
