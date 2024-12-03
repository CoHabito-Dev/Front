import 'package:sqflite/sqflite.dart';

class UserCoHabitoRepository {

  final Database _db;
  UserCoHabitoRepository(this._db);

  // Método para associar um usuário a um cohabito
  Future<void> insertUserCoHabito(int userId, int cohabitoId) async {
    await _db.insert(
      'User_CoHabito',
      {'id_user': userId, 'id_cohabito': cohabitoId},
    );
  }

  // Método para buscar associações de usuários e cohabitantes
  Future<List<Map<String, dynamic>>> getUserCoHabito(int userId) async {
    return await _db.query('User_CoHabito', where: 'id_user = ?', whereArgs: [userId]);
  }

  // Método para atualizar associação de usuário e cohabito
  Future<void> updateUserCoHabito(int id, int userId, int cohabitoId) async {
    await _db.update(
      'User_CoHabito',
      {'id_user': userId, 'id_cohabito': cohabitoId},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Método para deletar associação de usuário e cohabito
  Future<void> deleteUserCoHabito(int id) async {
    await _db.delete('User_CoHabito', where: 'id = ?', whereArgs: [id]);
  }
}
