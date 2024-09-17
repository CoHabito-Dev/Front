import 'package:flutter/material.dart';
import 'AppColors.dart';
import 'components/GenericalIput.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
          child: Column(
            children: [
              GenericalInput(
                textInputType: TextInputType.number,
                ispassword: false,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
