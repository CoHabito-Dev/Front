import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/MediumHeader.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: MediumHeader(),
    );
  }
}