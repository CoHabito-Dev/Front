import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/CardTask.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/inputpesquisa.dart';
import 'package:co_habito/screens/CreateCoHabitoScreen.dart';
import 'package:co_habito/screens/CreateTaskScreen.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/screens/TaskDifficultyScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:flutter/material.dart';

class SelectTasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: "", onPressed: (){Go.to(CreateCoHabitoScreen(), context);}),
        title: HeaderTitle(title: "Selecionar tarefas", fontSize: 26),
        after: CustomImageButton(imageUrl: "", onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 331,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome:", fontSize: 14)),
                SizedBox(height: 10,),
                SearchInput(textInputType: TextInputType.text),
                SizedBox(height: 15,),
                TaskCard(title: "Varrer a Casa", icon: Icons.cleaning_services),
                TaskCard(title: "Lavar a louça", icon: Icons.wash),
                TaskCard(title: "Lavar Banheiro", icon: Icons.bathroom),
                SizedBox(height: 100,),
                GenericalButton(buttonText: "Adicionar Tarefa", onPressed: (){Go.to(CreateTaskScreen(), context);}),
                SizedBox(height: 10,),
                GenericalButton(buttonText: "Confirmar Tarefas", onPressed: (){Go.to(TaskDifficultyScreen(taskTitle: "Varrer a Casa"), context);}),
              ],
            ),
          )
        )
      )
    );
  }
}