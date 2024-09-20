import 'package:flutter/material.dart';

class Bodywithlargeheader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  Bodywithlargeheader({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
      constraints: BoxConstraints(
        maxHeight: 300
      ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100)
          )
        ),
        child: child ?? SizedBox.shrink(),
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(550);
}

