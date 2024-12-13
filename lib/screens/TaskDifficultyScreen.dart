import 'package:cohabito/AppColors.dart';
import 'package:cohabito/AppIcons.dart';
import 'package:cohabito/components/BodyWithSmallHeader.dart';
import 'package:cohabito/components/DifficultView.dart';
import 'package:cohabito/components/GenericalButton.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/LevelBar.dart';
import 'package:cohabito/components/NumericSelector.dart';
import 'package:cohabito/components/SmallHeader.dart';
import 'package:cohabito/screens/CoHabitoScreen.dart';
import 'package:cohabito/screens/SelectTasksScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:cohabito/components/CustomImageButton.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:cohabito/components/InputLabel.dart';
import 'package:flutter/material.dart';

class TaskDifficultyScreen extends StatelessWidget{
  final String taskTitle;
  TaskDifficultyScreen({required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: AppIcons.arrow_left_charcoal, onPressed: (){Go.to(SelectTasksScreen(), context);}),
        title: HeaderTitle(title: taskTitle, fontSize: 30),
        after: CustomImageButton(imageUrl: AppIcons.exit_charcoal, onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 294,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "O quanto gosta de fazer a tarefa:", fontSize: 16)),
                Align(alignment: Alignment.centerLeft, child:LevelBar()),
                SizedBox(height: 10,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Tempo estimado:", fontSize: 16)),
                Align(alignment: Alignment.centerLeft, child:NumericSelector()),
                SizedBox(height: 10,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Dificuldade:", fontSize: 16)),
                Align(alignment: Alignment.centerLeft, child:DifficultView()),
                SizedBox(height: 30,),
                GenericalButton(buttonText: "Salvar", onPressed: (){Go.to(CoHabitoScreen(coHabitoName: "Casa dos Pais"), context);})
              ],
            ),
          )
        )
      )
    );
  }
}