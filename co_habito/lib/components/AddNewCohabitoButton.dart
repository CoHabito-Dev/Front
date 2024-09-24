import 'package:co_habito/AppColors.dart';
import 'package:co_habito/AppIcons.dart';
import 'package:flutter/material.dart';

class AddNewCohabitoButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String plusIconUrl;
  final String text;
  final TextStyle textStyle = const TextStyle(
    fontFamily: 'Lexend',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.Charcoal,
  );

  AddNewCohabitoButton({
    required this.onPressed,
    required this.text,
    String? plusIconUrl,
  }) : plusIconUrl = plusIconUrl ?? AppIcons.circle_plus_charcoal;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 500,
          maxWidth: 500,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              plusIconUrl,
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: textStyle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
