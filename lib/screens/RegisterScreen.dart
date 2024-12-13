import 'package:cohabito/AppColors.dart';
import 'package:cohabito/AppIcons.dart';
import 'package:cohabito/components/BodyWithSmallHeader.dart';
import 'package:cohabito/components/CustomImageButton.dart';
import 'package:cohabito/components/GenericalButton.dart';
import 'package:cohabito/components/GenericalIput.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/InputLabel.dart';
import 'package:cohabito/components/LinkLabel.dart';
import 'package:cohabito/components/SmallHeader.dart';
import 'package:cohabito/screens/LoginScreen.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:flutter/material.dart';
import 'package:cohabito/backend/repositories/UserRepository.dart';
import 'package:cohabito/backend/services/UserService.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  Future<Database> _initializeDb() async {
    return openDatabase(
      join(await getDatabasesPath(), 'bancodados.db'),
      version: 1,
    );
  }

  void _register(BuildContext context) async {
    final db = await _initializeDb();
    final userRepository = UserRepository(db);
    final userService = UserService(userRepository);

    final name = nameController.text.trim();
    final username = usernameController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    final message = await userService.registerUser(name, username, password, confirmPassword);

    if (message == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Usuário cadastrado com sucesso!"), backgroundColor: Colors.green),
      );
      Go.to(LoginScreen(), context);
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
      appBar: SmallHeader(
        before: CustomImageButton(
          imageUrl: AppIcons.arrow_left_charcoal,
          onPressed: () {
            Go.to(StartScreen(), context);
          },
        ),
        title: HeaderTitle(title: "Cadastrar", fontSize: 36),
      ),
      body: BodyWithSmallHeader(
        backgroundColor: Colors.white,
        child: Center(
          child: Container(
            width: 308,
            child: Column(
              children: [
                SizedBox(height: 60),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome:", fontSize: 14)),
                SizedBox(height: 10),
                GenericalInput(controller: nameController, textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 20),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Nome de Usuário:", fontSize: 14)),
                SizedBox(height: 10),
                GenericalInput(controller: usernameController, textInputType: TextInputType.text, ispassword: false),
                SizedBox(height: 20),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Senha:", fontSize: 14)),
                SizedBox(height: 10),
                GenericalInput(controller: passwordController, textInputType: TextInputType.text, ispassword: true),
                SizedBox(height: 20),
                Align(alignment: Alignment.centerLeft, child: InputLabel(string: "Confirmar Senha:", fontSize: 14)),
                SizedBox(height: 10),
                GenericalInput(controller: confirmPasswordController, textInputType: TextInputType.text, ispassword: true),
                SizedBox(height: 35),
                GenericalButton(
                  buttonText: "Cadastrar",
                  onPressed: () => _register(context),
                ),
                SizedBox(height: 40),
                LinkLabel(grey: "Já possui cadastro?", blue: "Realizar login", linkTo: LoginScreen())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
