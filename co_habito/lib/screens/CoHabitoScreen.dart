import 'package:co_habito/AppColors.dart';
import 'package:co_habito/AppIcons.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SectionTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/components/TarefaTempoDificuldade.dart';
import 'package:co_habito/components/guiapessoas.dart';
import 'package:co_habito/screens/SelectCoHabitoScreen.dart';
import 'package:co_habito/screens/ShareCoHabitoScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:flutter/material.dart';

class CoHabitoScreen extends StatelessWidget{
  final String coHabitoName;
  CoHabitoScreen({required this.coHabitoName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: "", onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
        title: HeaderTitle(title: coHabitoName, fontSize: 30),
        after: CustomImageButton(imageUrl: AppIcons.house_lapisLazuli, onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerRight, child: CustomImageButton(imageUrl: AppIcons.link_simple_lapisLazuli, onPressed: (){Go.to(ShareCoHabitoScreen(), context);})),
                Align(alignment: Alignment.centerLeft, child: SecionTitle(title: "Tarefas sem dono")),
                TaskandtimeCard(imageUrl: "", title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                SizedBox(height: 30,),
                Align(alignment: Alignment.centerLeft, child: SecionTitle(title: "Pessoas na Casa")),
                ParticipantList(participantes: ["João", "Pedro", "Caio", "Victor", "Sávio", "Wily"]),
                TaskandtimeCard(imageUrl: "", title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                TaskandtimeCard(imageUrl: "", title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                TaskandtimeCard(imageUrl: "", title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
              ],
            ),
          )
        )
      ),
    );
  }
}