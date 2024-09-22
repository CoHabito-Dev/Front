import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';
import 'components/GenericalIput.dart';
import 'components/TarefaTempoDificuldade.dart';
import 'components/CardTask.dart';
import 'components/inputpesquisa.dart';
import 'components/CardCohabito.dart';
import 'components/guiapessoas.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(before: FloatingActionButton(onPressed: null), title: HeaderTitle(title: "Selecionar tarefas", fontSize: 26), after: FloatingActionButton(onPressed: null)),
      body: BodyWithSmallHeader(child: Column(children: [FloatingActionButton(onPressed: null)])),
      dev
    ),
  );
}
