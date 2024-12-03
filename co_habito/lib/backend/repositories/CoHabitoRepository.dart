import 'package:sqflite/sqflite.dart';

class CoHabitoRepository {

  final Database _db;
  CoHabitoRepository(this._db);

  // Método para inserir cohabito
  Future<void> insertCoHabito(String name, String identifier, String? description) async {
    await _db.insert(
      'CoHabito',
      {'name': name, 'identifier': identifier, 'descripton': description},
    );
  }

  // Método para buscar todos os cohabitantes
  Future<List<Map<String, dynamic>>> getCoHabitants() async {
    return await _db.query('CoHabito');
  }

  // Método para atualizar cohabito
  Future<void> updateCoHabito(int id, String name, String identifier, String? description) async {
    await _db.update(
      'CoHabito',
      {'name': name, 'identifier': identifier, 'descripton': description},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Método para deletar cohabito
  Future<void> deleteCoHabito(int id) async {
    await _db.delete('CoHabito', where: 'id = ?', whereArgs: [id]);
  }
}
