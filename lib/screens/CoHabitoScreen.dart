import 'package:cohabito/AppColors.dart';
import 'package:cohabito/AppIcons.dart';
import 'package:cohabito/components/BodyWithSmallHeader.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/SectionTitle.dart';
import 'package:cohabito/components/SmallHeader.dart';
import 'package:cohabito/components/TarefaTempoDificuldade.dart';
import 'package:cohabito/components/guiapessoas.dart';
import 'package:cohabito/screens/SelectCoHabitoScreen.dart';
import 'package:cohabito/screens/ShareCoHabitoScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:cohabito/components/CustomImageButton.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:flutter/material.dart';

class CoHabitoScreen extends StatelessWidget{
  final String coHabitoName;
  CoHabitoScreen({required this.coHabitoName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: AppIcons.arrow_left_charcoal, onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
        title: HeaderTitle(title: coHabitoName, fontSize: 30),
        after: CustomImageButton(imageUrl: AppIcons.exit_charcoal, onPressed: (){Go.to(StartScreen(), context);}),
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
                TaskandtimeCard(imageUrl: AppIcons.broom_carolinaBlue, title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                SizedBox(height: 30,),
                Align(alignment: Alignment.centerLeft, child: SecionTitle(title: "Pessoas na Casa")),
                ParticipantList(participantes: ["João", "Pedro", "Caio", "Victor", "Sávio", "Wily"]),
                TaskandtimeCard(imageUrl: AppIcons.broom_carolinaBlue, title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                TaskandtimeCard(imageUrl: AppIcons.broom_carolinaBlue, title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
                TaskandtimeCard(imageUrl: AppIcons.broom_carolinaBlue, title: "Varrer Casa", minutes: 30, difficulty: "Difícil"),
              ],
            ),
          )
        )
      ),
    );
  }
}