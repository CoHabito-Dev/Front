import 'package:flutter/material.dart';

class DifficultView extends StatefulWidget {
  final TextStyle textStyle = const TextStyle(fontFamily: 'Poppins', fontSize: 15, fontWeight: FontWeight.w700);


  @override
  _DifficultViewState createState() => _DifficultViewState();
}

class _DifficultViewState extends State<DifficultView> {
  String _selectedDifficulty = 'Fácil'; // Variável para armazenar a dificuldade selecionada

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildRadioOption('Fácil'),
        SizedBox(width: 16), // Espaço entre os botões de opção
        _buildRadioOption('Médio'),
        SizedBox(width: 16), // Espaço entre os botões de opção
        _buildRadioOption('Difícil'),
      ],
    );
  }

  Widget _buildRadioOption(String difficulty) {
    return Row(
      children: [
        Radio<String>(
          value: difficulty,
          groupValue: _selectedDifficulty,
          onChanged: (value) {
            setState(() {
              _selectedDifficulty = value!;
            });
          },
        ),
        Text(
          difficulty,
          style: widget.textStyle,
        ),
      ],
    );
  }
}
