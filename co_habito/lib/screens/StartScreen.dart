import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithLargeHeader.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/LargeHeader.dart';
import 'package:co_habito/components/OULabel.dart';
import 'package:co_habito/screens/LoginScreen.dart';
import 'package:co_habito/screens/registerScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: LargeHeader(title: HeaderTitle(title: "CoHábito", fontSize: 40)),
      body: BodyWithLargeHeader(
        child: Container(
          width: 241,
          child: Column(
            children: [
              SizedBox(height: 40,),
              GenericalButton(buttonText: "Login", onPressed: (){
                Go.to(LoginScreen(), context);
              }),
              OULabel(),
              GenericalButton(buttonText: "Cadastrar", onPressed: (){
                Go.to(RegisterScreen(), context);
              })
            ],
          ),
        ),
      ),
    );
  }
}