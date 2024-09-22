import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class LargeHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? title;
  LargeHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(376),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.Carolina_Blue,
        flexibleSpace: Container(
          height: 376,
          alignment: Alignment.center,
          child: title ?? Text("")
        )
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(376);
}