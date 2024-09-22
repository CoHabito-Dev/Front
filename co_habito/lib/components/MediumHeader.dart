import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class MediumHeader extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(134),
      child: AppBar(
        backgroundColor: AppColors.Carolina_Blue,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(134);
}