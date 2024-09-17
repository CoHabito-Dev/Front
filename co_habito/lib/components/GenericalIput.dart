import 'package:flutter/material.dart';
import 'package:co_habito/AppColors.dart';

class GenericalInput extends StatelessWidget{
  final TextInputType textInputType;
  final bool ispassword;
  //final Function(String) onChanged;
  final TextEditingController controller;

  GenericalInput ({
    required this.textInputType,
    required this.ispassword,
    //required this.onChanged,
    TextEditingController? controller,
  }) : this.controller = controller ?? TextEditingController();


  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 362,
      height: 566,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: ispassword,
        cursorColor: Color.fromARGB(255, 95, 95, 95),
        decoration: InputDecoration(
          fillColor: Color(0xFFF6F6F6),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none, // Remover a borda para manter o foco na cor de fundo
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none, // Manter o mesmo estilo ao focar
          ),
        ),
      ),
    );
  }
}