import 'package:co_habito/CoHabitoApp.dart';
import 'package:sqflite/sqflite.dart';

class UserRepository {

  final Database _db;
  UserRepository(this._db);

  //Metodo para inserir usuario
  Future<void> insertUser(String name, String username, String password) async {
    await _db.insert(
      'User',
      {'name': name, 'username': username, 'password': password},
    );
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
