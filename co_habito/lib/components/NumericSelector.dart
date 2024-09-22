import 'package:flutter/material.dart';

class NumericSelector extends StatefulWidget {
  final int initialValue;
  final int minValue;
  final int maxValue;
  final String minusIconUrl;
  final String plusIconUrl;
  final double iconAndTextSpace;
  final double buttonWidth;
  final double buttonHeight;
  final TextStyle textStyle = const TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w700);


  NumericSelector({
    this.initialValue = 0,
    this.minValue = 0,
    this.maxValue = 999,
    this.minusIconUrl = 'assets/images/image16.png', // URL do ícone de "-"
    this.plusIconUrl = 'assets/images/image8.png',  // URL do ícone de "+"
    this.iconAndTextSpace = 16,
    double? buttonWidth, 
    double? buttonHeight, 
  })  : buttonWidth = buttonWidth ?? 21, 
        buttonHeight = buttonHeight ?? 21; 

  @override
  _NumericSelectorState createState() => _NumericSelectorState();
}

class _NumericSelectorState extends State<NumericSelector> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  void _increment() {
    if (_currentValue < widget.maxValue) {
      setState(() {
        _currentValue++;
      });
    }
  }

  void _decrement() {
    if (_currentValue > widget.minValue) {
      setState(() {
        _currentValue--;
      });
    }
  }

   @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _decrement,
          child: Image.network(
            widget.minusIconUrl,
            width: widget.buttonWidth,
            height: widget.buttonHeight,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: widget.iconAndTextSpace), 
        Text(
          '$_currentValue',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),                // Qualquer coisa, mudar para o estilo do numero para o do figma, porém, a fonte faz com que os botões fiquem mudando de posição sutilmente...
        ),
        SizedBox(width: widget.iconAndTextSpace), 
        GestureDetector(
          onTap: _increment,
          child: Image.network(
            widget.plusIconUrl,
            width: widget.buttonWidth, 
            height: widget.buttonHeight,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 8), // Espaço entre o ícone e o texto de Minutos
        Text(
          'Minutos',
          style: widget.textStyle,
        ),
      ],
    );
  }
}