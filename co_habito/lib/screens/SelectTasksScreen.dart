import 'package:co_habito/AppColors.dart';
import 'package:co_habito/AppIcons.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/CardTask.dart';
import 'package:co_habito/components/GenericalButton.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:co_habito/components/InputLabel.dart';
import 'package:co_habito/components/inputpesquisa.dart';
import 'package:co_habito/screens/CreateCoHabitoScreen.dart';
import 'package:co_habito/screens/CreateTaskScreen.dart';
import 'package:co_habito/screens/StartScreen.dart';
import 'package:co_habito/screens/TaskDifficultyScreen.dart';
import 'package:co_habito/tools/Go.dart';
import 'package:co_habito/components/CustomImageButton.dart';
import 'package:flutter/material.dart';

class SelectTasksScreen extends StatefulWidget {
  @override
  _SelectTasksScreenState createState() => _SelectTasksScreenState();
}

class _SelectTasksScreenState extends State<SelectTasksScreen> {
  final List<Task> tasks = [
    Task(name: 'Varrer a Casa', icon: AppIcons.broom_carolinaBlue),
    Task(name: 'Lavar a Louça', icon: AppIcons.dishwasher_carolinaBlue),
    Task(name: 'Lavar Banheiro', icon: AppIcons.mop_carolinaBlue),
  ];

  // Estado dos checkboxes para cada tarefa
  final Map<String, bool> _checkedTasks = {};

  @override
  void initState() {
    super.initState();
    // Inicializa todas as tarefas como "não marcadas"
    tasks.forEach((task) {
      _checkedTasks[task.name] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        before: CustomImageButton(
            imageUrl: AppIcons.arrow_left_charcoal,
            onPressed: () {
              Go.to(CreateCoHabitoScreen(), context);
            }),
        title: HeaderTitle(title: "Selecionar tarefas", fontSize: 26),
        after: CustomImageButton(
            imageUrl: AppIcons.exit_charcoal,
            onPressed: () {
              Go.to(StartScreen(), context);
            }),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: 331,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InputLabel(
                      string: "Inserir as Tarefas Desejadas:", fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                SearchInput(textInputType: TextInputType.text),
                SizedBox(
                  height: 15,
                ),
                // Renderizando a lista de tarefas com checkboxes
                ...tasks
                    .map((task) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: AppColors.Lapis_Lazuli,
                            child: FittedBox(
                              child: SizedBox(
                                width:
                                    30, // Ajuste o tamanho conforme necessário
                                height:
                                    30, // Ajuste o tamanho conforme necessário
                                child: CustomImageButton(
                                  imageUrl: task.icon,
                                  onPressed: () {},
                                ),
                              ),
                              fit: BoxFit
                                  .contain, // A imagem será redimensionada para caber no espaço
                            ),
                          ),
                          title: Text(task.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Checkbox(
                            value: _checkedTasks[task.name],
                            onChanged: (bool? value) {
                              setState(() {
                                _checkedTasks[task.name] = value ?? false;
                              });
                            },
                          ),
                        ))
                    .toList(),
                SizedBox(
                  height: 100,
                ),
                GenericalButton(
                    buttonText: "Adicionar Tarefa",
                    onPressed: () {
                      Go.to(CreateTaskScreen(), context);
                    }),
                SizedBox(
                  height: 10,
                ),
                GenericalButton(
                    buttonText: "Confirmar Tarefas",
                    onPressed: () {
                      // Exemplo de uso do estado das tarefas selecionadas
                      List<String> selectedTasks = _checkedTasks.entries
                          .where((entry) => entry.value)
                          .map((entry) => entry.key)
                          .toList();

                      if (selectedTasks.isNotEmpty) {
                        Go.to(
                            TaskDifficultyScreen(
                                taskTitle: selectedTasks.first),
                            context);
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Task {
  final String name;
  final String icon;

  Task({required this.name, required this.icon});
}
