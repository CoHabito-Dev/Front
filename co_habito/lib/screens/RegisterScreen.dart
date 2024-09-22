import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/GenericalIput.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(title: HeaderTitle(title: "Cadastrar", fontSize: 36),),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome:", fontSize: 14)),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome de Usuário:", fontSize: 14)),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Senha:", fontSize: 14)),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Confirmar Senha:", fontSize: 14)),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
              ],
            ),
          )
        )
      )
    );
  }
}