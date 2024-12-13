import 'package:cohabito/AppColors.dart';
import 'package:cohabito/components/BodyWithLargeHeader.dart';
import 'package:cohabito/components/GenericalButton.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/LargeHeader.dart';
import 'package:cohabito/components/OULabel.dart';
import 'package:cohabito/screens/LoginScreen.dart';
import 'package:cohabito/screens/registerScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: LargeHeader(title: HeaderTitle(title: "CoHábito", fontSize: 40)),
      body: BodyWithLargeHeader(
        child: Center(
          child: Container(
            width: 248,
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
          )
        )
      ),
    );
  }
}