import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/screens/SelectCoHabitoScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:flutter/material.dart';

class EnterCoHabitoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(imageUrl: "", onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
        title: HeaderTitle(title: "Entrar em CoHábito", fontSize: 24),
        after: CustomImageButton(imageUrl: "", onPressed: (){Go.to(StartScreen(), context);}),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                
              ],
            ),
          )
        )
      )
    );
  }
}