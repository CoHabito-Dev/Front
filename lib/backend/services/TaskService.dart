import 'package:cohabito/backend/repositories/TaskUniqueRepository.dart';

class TaskService {
  final TaskUniqueRepository _taskRepository;

  TaskService(this._taskRepository);

  // Método para inserir tarefa
  Future<void> createTask(String name, String? date, String? time, String? status, int? liked, int? difficult) async {
    await _taskRepository.insertTaskUnique(name, date, time, status, liked, difficult);
  }
}
