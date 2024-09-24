import 'package:co_habito/AppColors.dart';
import 'package:co_habito/AppIcons.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/screens/SelectTasksScreen.dart';
import 'package:co_habito/screens/TaskDifficultyScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/components/GenericalIput.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:flutter/material.dart';

class CreateTaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: "", onPressed: (){Go.to(SelectTasksScreen(), context);}),
        title: HeaderTitle(title: "Criar Tarefa", fontSize: 32),
        after: CustomImageButton(imageUrl: AppIcons.house_lapisLazuli, onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 40,),
                GenericalButton(buttonText: "Criar", onPressed: (){Go.to(TaskDifficultyScreen(taskTitle: "Lavar Louça"), context);})
              ],
            ),
          )
        )
      ),
    );
  }
}