import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';

class EnterCoHabitoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(title: HeaderTitle(title: "Entrar em CoHábito", fontSize: 24),),
      body: BodyWithSmallHeader(
        child: Container(
          width: 308,
          child: Column(
            children: [
              
            ],
          ),
        )
      )
    );
  }
}