import 'package:flutter/material.dart';

class BodyWithMediumHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  BodyWithMediumHeader({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
      constraints: BoxConstraints(
        maxHeight: 600
      ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100)
          )
        ),
        child: child ?? SizedBox.expand(),
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(550);
}

