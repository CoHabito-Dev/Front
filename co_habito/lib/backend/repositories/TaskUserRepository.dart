import 'package:sqflite/sqflite.dart';

class TaskUserRepository {

  final Database _db;
  TaskUserRepository(this._db);

  // Método para inserir tarefa de usuário
  Future<void> insertTaskUser(int userId, String taskName) async {
    await _db.insert(
      'Task_User',
      {'id_user': userId, 'name': taskName},
    );
  }

  // Método para buscar tarefas de usuários
  Future<List<Map<String, dynamic>>> getTasksForUser(int userId) async {
    return await _db.query('Task_User', where: 'id_user = ?', whereArgs: [userId]);
  }

  // Método para atualizar tarefa de usuário
  Future<void> updateTaskUser(int id, int userId, String taskName) async {
    await _db.update(
      'Task_User',
      {'id_user': userId, 'name': taskName},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Método para deletar tarefa de usuário
  Future<void> deleteTaskUser(int id) async {
    await _db.delete('Task_User', where: 'id = ?', whereArgs: [id]);
  }
}
