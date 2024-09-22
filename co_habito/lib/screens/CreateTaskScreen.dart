import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';

class CreateTaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(),
      body: BodyWithSmallHeader(),
    );
  }
}