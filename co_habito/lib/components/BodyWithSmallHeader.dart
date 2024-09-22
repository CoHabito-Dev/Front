import 'package:flutter/material.dart';

class BodyWithSmallHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  final Color? backgroundColor;

  BodyWithSmallHeader({this.child, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 661,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: backgroundColor ?? Color(0xFFF2F2F2),
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

