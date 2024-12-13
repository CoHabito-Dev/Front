import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextInputType textInputType;
  final TextEditingController controller;

  SearchInput({
    required this.textInputType,
    TextEditingController? controller,
  }) : this.controller = controller ?? TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,
      height: 56, // Ajuste a altura para melhor visualização
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        cursorColor: Color.fromARGB(255, 95, 95, 95),
        decoration: InputDecoration(
          hintText: 'Pesquisar ...', // Placeholder
          hintStyle: TextStyle(color: Color.fromARGB(255, 131, 131, 131)), // Estilo do placeholder
          fillColor: Color(0xFFF6F6F6),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Color(0xFFB3B3B3),
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Color(0xFFB3B3B3),
              width: 1.5,
            ),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Colors.blue, // Cor do ícone
          ),
        ),
      ),
    );
  }
}
