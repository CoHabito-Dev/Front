import 'package:flutter/material.dart';

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
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: ispassword,
      cursorColor: Color.fromARGB(255, 95, 95, 95),
      decoration: InputDecoration(
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
          ), // Manter o mesmo estilo ao focar
        ),
      ),
    );
  }
}