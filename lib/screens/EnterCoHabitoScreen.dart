import 'package:cohabito/AppColors.dart';
import 'package:cohabito/AppIcons.dart';
import 'package:cohabito/components/BodyWithSmallHeader.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/SmallHeader.dart';
import 'package:cohabito/screens/CoHabitoScreen.dart';
import 'package:cohabito/screens/SelectCoHabitoScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:cohabito/components/CustomImageButton.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:cohabito/components/GenericalIput.dart';
import 'package:cohabito/components/GenericalButton.dart';
import 'package:cohabito/components/InputLabel.dart';
import 'package:flutter/material.dart';

class EnterCoHabitoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: AppIcons.arrow_left_charcoal, onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
        title: HeaderTitle(title: "Entrar em CoHábito", fontSize: 24),
        after: CustomImageButton(imageUrl: AppIcons.exit_charcoal, onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Insira o ID do CoHábito que deseja entrar:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 40,),
                GenericalButton(buttonText: "Acessar", onPressed: (){Go.to(CoHabitoScreen(coHabitoName: "Casa dos Pais"), context);})
              ],
            ),
          )
        )
      )
    );
  }
}