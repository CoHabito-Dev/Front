import 'package:cohabito/AppColors.dart';
import 'package:cohabito/components/BodyWithMediumHeader.dart';
import 'package:cohabito/components/GenericalButton.dart';
import 'package:cohabito/components/GenericalIput.dart';
import 'package:cohabito/components/InputLabel.dart';
import 'package:cohabito/components/LinkLabel.dart';
import 'package:cohabito/components/MediumHeader.dart';
import 'package:cohabito/components/TitleLabel.dart';
import 'package:cohabito/screens/SelectCoHabitoScreen.dart';
import 'package:cohabito/screens/registerScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:cohabito/backend/repositories/UserRepository.dart';
import 'package:cohabito/backend/services/UserService.dart';

class LoginScreen extends StatelessWidget{

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<Database> _initializeDb() async {
    return openDatabase(
      join(await getDatabasesPath(), 'bancodados.db'),
      version: 1,
    );
  }

  void _login(BuildContext context) async {
    final db = await _initializeDb();
    final userRepository = UserRepository(db);
    final userService = UserService(userRepository);

    final username = usernameController.text.trim();
    final password = passwordController.text;

    final message = await userService.login(username, password);

    if (message == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login bem-sucedido!"), backgroundColor: Colors.green),
      );

      
      Go.to(SelectCoHabitoScreen(), context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), backgroundColor: Colors.red),
      );
    }
  }


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
                GenericalInput(
                  controller: usernameController, 
                  textInputType: TextInputType.text, 
                  ispassword: false,
                ),
                SizedBox(height: 15,),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Senha:", fontSize: 14)),
                SizedBox(height: 10,),
                GenericalInput(
                  controller: passwordController, 
                  textInputType: TextInputType.text, 
                  ispassword: true,
                ),
                SizedBox(height: 35,),
                 GenericalButton(
                  buttonText: "Entrar",
                  onPressed: () => _login(context),
                ),
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