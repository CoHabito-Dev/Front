import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/AddNewCohabitoButton.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/CardCohabito.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/components/EnterCohabitoButton.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/screens/CreateCoHabitoScreen.dart';
import 'package:co_habito/screens/EnterCoHabitoScreen.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:flutter/material.dart';

class SelectCoHabitoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(title: HeaderTitle(title: "Seus CoHábitos", fontSize: 30),after: CustomImageButton(imageUrl: "", onPressed: (){Go.to(StartScreen(), context);}),),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 298,
            child: Column(
              children: [
                SizedBox(height: 60,),
                CardCohabito(title: "Casa dos Pais", subtitle: "Integrantes: Lúcio e José", icon: Icons.home),
                CardCohabito(title: "Trabalho", subtitle: "Integrantes: Roberto e José", icon: Icons.home),
                SizedBox(height: 40,),
                AddNewCohabitoButton(onPressed: (){Go.to(CreateCoHabitoScreen(), context);}),
                SizedBox(height: 20,),
                EnterCoHabitoButton(onPressed: (){Go.to(EnterCoHabitoScreen(), context);})
              ],
            ),
          )
        )
      ),
    );
  }
}