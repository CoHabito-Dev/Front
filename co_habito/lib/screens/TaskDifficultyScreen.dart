import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/DifficultView.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/LevelBar.dart';
import 'package:co_habito/components/NumericSelector.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/screens/CoHabitoScreen.dart';
import 'package:co_habito/screens/SelectTasksScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:flutter/material.dart';

class TaskDifficultyScreen extends StatelessWidget{
  final String taskTitle;
  TaskDifficultyScreen({required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: "", onPressed: (){Go.to(SelectTasksScreen(), context);}),
        title: HeaderTitle(title: taskTitle, fontSize: 30),
        after: CustomImageButton(imageUrl: "", onPressed: (){Go.to(StartScreen(), context);}),
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