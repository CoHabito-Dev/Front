import 'package:co_habito/AppColors.dart';
import 'package:co_habito/components/BodyWithSmallHeader.dart';
import 'package:co_habito/components/HeaderTitle.dart';
import 'package:co_habito/components/SmallHeader.dart';
import 'package:flutter/material.dart';

class CoHabitoScreen extends StatelessWidget{
  final String coHabitoName;
  CoHabitoScreen({required this.coHabitoName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(title: HeaderTitle(title: coHabitoName, fontSize: 30)),
      body: BodyWithSmallHeader(
        child: Container(
          width: 340,
          child: Column(
            children: [
              
            ],
          ),
        )
      ),
    );
  }
}