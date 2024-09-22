import 'package:co_habito/components/BodyWithLargeHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/LargeHeader.dart';
import 'package:flutter/material.dart';
import 'AppColors.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: LargeHeader(title: HeaderTitle(title: "CoHábito", fontSize: 40),),
      body: BodyWithLargeHeader(child: Column(children: [FloatingActionButton(onPressed: null)])),
    ),
  ));
}
