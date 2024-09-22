import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/GenericalIput.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/LinkLabel.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/screens/LoginScreen.dart';
import 'package:co_habito/screens/SelectCoHabitoScreen.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(before: CustomImageButton(imageUrl: "", onPressed:(){Go.to(StartScreen(), context);}),title: HeaderTitle(title: "Cadastrar", fontSize: 36),),
      body: BodyWithSmallHeader(
        backgroundColor: Colors.white,
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome de Usuário:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Senha:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
                SizedBox(height: 20,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Confirmar Senha:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(textInputType: TextInputType.text, ispassword: true),
                SizedBox(height: 35,),
                GenericalButton(buttonText: "Cadastrar", onPressed: (){Go.to(SelectCoHabitoScreen(), context);}),
                SizedBox(height: 40,),
                LinkLabel(grey: "Já possui cadastro?", blue: "Realizar login", linkTo: LoginScreen())
              ],
            ),
          )
        )
      )
    );
  }
}