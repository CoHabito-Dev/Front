import 'package:sqflite/sqflite.dart';

class TaskUniqueRepository {

  final Database _db;
  TaskUniqueRepository(this._db);

  // Método para inserir tarefa única
  Future<void> insertTaskUnique(int userId, int cohabitoId, String name, String? date, String? time, String? status, int? liked, int? difficult) async {
    await _db.insert(
      'TaskUnique',
      {
        'id_user': userId,
        'id_cohabito': cohabitoId,
        'name': name,
        'date': date,
        'time': time,
        'status': status,
        'liked': liked,
        'difficult': difficult
      },
    );
  }

  // Método para buscar tarefas únicas
  Future<List<Map<String, dynamic>>> getTaskUnique(int userId, int cohabitoId) async {
    return await _db.query('TaskUnique', where: 'id_user = ? AND id_cohabito = ?', whereArgs: [userId, cohabitoId]);
  }

  // Método para atualizar tarefa única
  Future<void> updateTaskUnique(int id, int userId, int cohabitoId, String name, String? date, String? time, String? status, int? liked, int? difficult) async {
    await _db.update(
      'TaskUnique',
      {
        'id_user': userId,
        'id_cohabito': cohabitoId,
        'name': name,
        'date': date,
        'time': time,
        'status': status,
        'liked': liked,
        'difficult': difficult
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Método para deletar tarefa única
  Future<void> deleteTaskUnique(int id) async {
    await _db.delete('TaskUnique', where: 'id = ?', whereArgs: [id]);
  }
}
