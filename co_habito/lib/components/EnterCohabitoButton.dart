import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class EnterCoHabitoButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String plusIconUrl;
  final TextStyle textStyle = const TextStyle(fontFamily: 'Lexend', fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.Charcoal);

  EnterCoHabitoButton({
    required this.onPressed,
    this.plusIconUrl = 'assets/images/image8.png', // URL genérica do ícone
  });

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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20), // Padding do botão
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            plusIconUrl,
            width: 32,
            height: 32,
          ),
          SizedBox(width: 23), // Espaço entre ícone e texto
          Text(
            'Entrar em CoHábitos',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
