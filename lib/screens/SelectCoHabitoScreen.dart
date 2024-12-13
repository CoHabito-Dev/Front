import 'package:cohabito/AppColors.dart';
import 'package:cohabito/AppIcons.dart';
import 'package:cohabito/components/AddNewCohabitoButton.dart';
import 'package:cohabito/components/BodyWithSmallHeader.dart';
import 'package:cohabito/components/CardCohabito.dart';
import 'package:cohabito/components/CustomImageButton.dart';
import 'package:cohabito/components/EnterCohabitoButton.dart';
import 'package:cohabito/components/HeaderTitle.dart';
import 'package:cohabito/components/SmallHeader.dart';
import 'package:cohabito/screens/CreateCoHabitoScreen.dart';
import 'package:cohabito/screens/EnterCoHabitoScreen.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:cohabito/tools/Go.dart';
import 'package:flutter/material.dart';

class SelectCoHabitoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.Carolina_Blue,
      appBar: SmallHeader(
        title: HeaderTitle(title: "Seus CoHábitos", fontSize: 24),
        after: CustomImageButton(
          imageUrl: AppIcons.exit_charcoal,
          width: 24, 
          height: 24,
          onPressed: () {
            Go.to(StartScreen(), context);
          },
        ),
      ),
      body: BodyWithSmallHeader(
        child: Center(
          child: Container(
            width: screenWidth * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.05),
                CardCohabito(
                  title: "Casa dos Pais",
                  subtitle: "Integrantes: Lúcio e José",
                  imageUrl: AppIcons.house_carolinaBlue,
                  onPressed: () {
                    // Define o onPressed
                  },
                ),
                SizedBox(height: 20),
                CardCohabito(
                  title: "Trabalho",
                  subtitle: "Integrantes: Roberto e José",
                  imageUrl: AppIcons.house_carolinaBlue,
                  onPressed: () {
                    // Define o onPressed
                  },
                ),
                SizedBox(height: screenHeight * 0.1),
                AddNewCohabitoButton(
                  text: 'Adicionar Novos CoHábitos',
                  onPressed: () {
                    Go.to(CreateCoHabitoScreen(), context);
                  },
                ),
                SizedBox(height: 10),
                AddNewCohabitoButton(
                  text: 'Entrar em CoHábitos',
                  onPressed: () {
                    Go.to(EnterCoHabitoScreen(), context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
