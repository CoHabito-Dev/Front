import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/LargeHeader.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: LargeHeader(),
    );
  }
}