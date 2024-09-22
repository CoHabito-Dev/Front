import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class SmallHeader extends StatelessWidget implements PreferredSizeWidget{
  final Widget? before;
  final Widget? title;
  final Widget? after;
  SmallHeader({this.before, this.title, this.after});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(85),
      child: AppBar(
        backgroundColor: AppColors.Carolina_Blue,
        flexibleSpace: Container(
          height: 422,
          alignment: Alignment.center,
          child: Row(children: [
            Container(width: (MediaQuery.of(context).size.width / 100) * 15, child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [before ?? SizedBox.shrink()])),
            Container(width: (MediaQuery.of(context).size.width / 100) * 70, child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [title ?? SizedBox.shrink()])),
            Container(width: (MediaQuery.of(context).size.width / 100) * 15, child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [after ?? SizedBox.shrink()])),
          ],)
        )
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(85);
}