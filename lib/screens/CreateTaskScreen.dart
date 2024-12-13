import 'package:flutter/material.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:cohabito/screens/TaskDifficultyScreen.dart';
import 'package:cohabito/backend/services/TaskService.dart';
import 'package:cohabito/backend/repositories/TaskUniqueRepository.dart';
import 'package:sqflite/sqflite.dart';
import 'package:cohabito/components/GenericalButton.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  final TextEditingController _nameController = TextEditingController();
  late TaskService _taskService;

  @override
  void initState() {
    super.initState();
    final// taskRepository = TaskUniqueRepository(); 
    //_taskService = TaskService(taskRepository);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Seu código para a tela de criação da task
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            // Sua UI existente
            GenericalButton(
              buttonText: "Criar",
              onPressed: () {
                if (_nameController.text.isNotEmpty) {
                  _taskService.createTask(
                    _nameController.text,
                    null,  // Pode passar os valores aqui ou de outras variáveis conforme necessário
                    null,
                    null,
                    0,
                    1,
                  ).then((_) {
                    Go.to(TaskDifficultyScreen(taskTitle: _nameController.text), context);
                  }).catchError((error) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Erro ao salvar a tarefa.")));
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("O nome da tarefa não pode ser vazio.")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
