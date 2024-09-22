import 'package:flutter/material.dart';

class BodyWithMediumHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? child;
  BodyWithMediumHeader({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 566,
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
  Size get preferredSize => Size.fromHeight(566);
}

