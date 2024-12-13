//import 'package:cohabito/CoHabitoApp.dart';
import 'package:sqflite/sqflite.dart';

class UserRepository {

  final Database _db;
  UserRepository(this._db);

  Future<bool> loginR(String username, String password) async {

      print('Username e passaword resultados');
      print(username);
      print(password);

      final result = await _db.query(
        'User',
        where: 'username = ? AND password = ?',
        whereArgs: [username, password],
      );

      print("Resultado da consulta: $result");
      return result.isNotEmpty; 
  }
  
  Future<bool> insertUser(String name, String username, String password) async {
    try {
      await _db.insert(
        'User',
        {'name': name, 'username': username, 'password': password},
      );

      
      print('nome ' + name);
      return true;
    } catch (e) {
      print("Erro ao inserir usuário: $e");
      return false;
    }
  }

  //Metodo para buscar usuario
  Future<List<Map<String, dynamic>>> getUsers() async {
    return await _db.query('User');
  }

  //Metodo para atualizar usuario
  Future<void> updateUser(int id, String name, String username, String password) async {
    await _db.update(
      'User',
      {'name': name, 'username': username, 'password': password},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  //Metodo para deletar usuario
  Future<void> deleteUser(int id) async {
    await _db.delete('User', where: 'id = ?', whereArgs: [id]);
  }
}
