import 'package:flutter/material.dart';

class Go {
  static void to(Widget screen, BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen
      )
    );
  }
}