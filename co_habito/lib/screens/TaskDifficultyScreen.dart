import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';

class TaskDifficultyScreen extends StatelessWidget{
  final String taskTitle;
  TaskDifficultyScreen({required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(title: HeaderTitle(title: taskTitle, fontSize: 30),),
      body: BodyWithSmallHeader()
    );
  }
}