import 'package:sqflite/sqflite.dart';

class TaskWeeklyRepository {

  final Database _db;
  TaskWeeklyRepository(this._db);

  // Método para inserir tarefa semanal
  Future<void> insertTaskWeekly(int userId, int cohabitoId, String name, String week, String time) async {
    await _db.insert(
      'TaskWeekly',
      {'id_user': userId, 'id_cohabito': cohabitoId, 'name': name, 'week': week, 'time': time},
    );
  }

  // Método para buscar tarefas semanais
  Future<List<Map<String, dynamic>>> getTaskWeekly(int userId, int cohabitoId) async {
    return await _db.query('TaskWeekly', where: 'id_user = ? AND id_cohabito = ?', whereArgs: [userId, cohabitoId]);
  }

  // Método para atualizar tarefa semanal
  Future<void> updateTaskWeekly(int id, int userId, int cohabitoId, String name, String week, String time) async {
    await _db.update(
      'TaskWeekly',
      {'id_user': userId, 'id_cohabito': cohabitoId, 'name': name, 'week': week, 'time': time},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Método para deletar tarefa semanal
  Future<void> deleteTaskWeekly(int id) async {
    await _db.delete('TaskWeekly', where: 'id = ?', whereArgs: [id]);
  }
}
