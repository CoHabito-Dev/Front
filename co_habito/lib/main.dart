import 'package:co_habito/components/BodyWithMediumHeader.dart';
import 'package:co_habito/components/MediumHeader.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: MediumHeader(),
      body: BodyWithMediumHeader(child: Column(children: [FloatingActionButton(onPressed: null)])),
    ),
  ));
}
