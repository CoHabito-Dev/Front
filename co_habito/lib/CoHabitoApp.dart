import 'package:flutter/material.dart';
import 'package:co_habito/screens/StartScreen.dart';

class CoHabitoApp extends StatefulWidget{
  const CoHabitoApp({super.key});
  @override
  _CoHabitoAppState createState() => _CoHabitoAppState();
}

class _CoHabitoAppState extends State<CoHabitoApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo',
      home: StartScreen()
    );
  }
}