import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithMediumHeader.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/GenericalIput.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/LinkLabel.dart';
import 'package:co_habito/components/MediumHeader.dart';
import 'package:co_habito/components/TitleLabel.dart';
import 'package:co_habito/screens/SelectCoHabitoScreen.dart';
import 'package:co_habito/screens/registerScreen.dart';
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
            width: 310,
            child: Column(
              children: [
                SizedBox(height: 30,),
                TitleLabel(title: "Login"),
                SizedBox(height: 20,),
                InputLabel(string: "Preencha os campos para realizar o Login", fontSize: 14),
                SizedBox(height: 30,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Usuário:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 15,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Senha:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
                SizedBox(height: 35,),
                GenericalButton(buttonText: "Acessar CoHábito", onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
                SizedBox(height: 40,),
                LinkLabel(grey: "Não é registrado?", blue: "Cadastre-se agora", linkTo: RegisterScreen(),)
              ],
            ),
          )
        )
      ),
    );
  }
}