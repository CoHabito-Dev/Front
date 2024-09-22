import 'package:flutter/material.dart';

class BodyWithSmallHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  BodyWithSmallHeader({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 661,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100)
          )
        ),
        child: child,
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(550);
}

