import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithMediumHeader.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/GenericalIput.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/LinkLabel.dart';
import 'package:co_habito/components/MediumHeader.dart';
import 'package:co_habito/components/TitleLabel.dart';
import 'package:co_habito/screens/SelectCoHabitoScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: MediumHeader(),
      body: BodyWithMediumHeader(
        child: Center(
          child: Container(
            width: 333,
            child: Column(
              children: [
                TitleLabel(title: "Login"),
                InputLabel(string: "Preencha os campos para realizar o Login", fontSize: 14),
                InputLabel(string: "Usuário", fontSize: 14),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                InputLabel(string: "Senha", fontSize: 14),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
                GenericalButton(buttonText: "Acessar CoHábito", onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
                LinkLabel(grey: "Não é registrado?", blue: "Cadastre-se agora")
              ],
            ),
          )
        )
      ),
    );
  }
}