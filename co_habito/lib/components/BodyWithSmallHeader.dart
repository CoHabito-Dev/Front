import 'package:flutter/material.dart';

class BodyWithSmallHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  BodyWithSmallHeader({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
      constraints: BoxConstraints(
        maxHeight: 680
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

