import 'package:flutter/material.dart';
import 'AppColors.dart';
import 'components/GenericalIput.dart';
import 'components/TarefaTempoDificuldade.dart';
import 'components/CardTask.dart';
import 'components/inputpesquisa.dart';
import 'components/CardCohabito.dart';
import 'components/guiapessoas.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              ParticipantList(participantes: [
              'João',
              'Pedro (3)',
              'Caio',
              'Vitor',
              'Ana',
              'Maria',
              'Lucas',
              'Carla',
              ]),
            ],
          ),
        ),
      ),
    ),
  );
}
