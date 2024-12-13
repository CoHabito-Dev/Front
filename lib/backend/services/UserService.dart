import 'package:cohabito/backend/repositories/UserRepository.dart';

class UserService {
  final UserRepository userRepository;

  UserService(this.userRepository);

  Future<String?> registerUser(String name, String username, String password, String confirmPassword) async {
    if (name.isEmpty || username.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      return "Preencha todos os campos.";
    }

    if (password != confirmPassword) {
      return "As senhas não coincidem.";
    }

    try {
      await userRepository.insertUser(name, username, password);
      return null;
    } catch (e) {
      return "Erro ao cadastrar usuário: ${e.toString()}";
    }
  }

  Future<String?> login(String username, String password) async {
    print('Username e passaword resultados');
    print(username);
    print(password);
    final user = await userRepository.loginR(username, password);

    if (user != null) {
      return null; 
    }

    return "Usuário ou senha incorretos";
  }
  
}
