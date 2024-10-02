import 'package:co_habito/AppColors.dart';
import 'package:co_habito/AppIcons.dart';
import 'package:flutter/material.dart';
import 'package:co_habito/components/CustomImageButton.dart';

class TaskandtimeCard extends StatelessWidget {

  final String imageUrl;
  final String title;
  final int minutes;
  final String difficulty;

  const TaskandtimeCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.minutes,
    required this.difficulty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,  // Largura fixa
      height: 100, // Altura ajustada
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,  // Centraliza verticalmente os itens
            children: [
              CircleAvatar(
                radius: 24,  // Tamanho do avatar
                backgroundColor: AppColors.Lapis_Lazuli,
                child: CustomImageButton(imageUrl: imageUrl, onPressed: (){}),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,  // Centraliza verticalmente o texto
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '$minutes minutos',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF5E5E5E), // Cor cinza para o tempo
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              // Alinha a bolinha vermelha junto ao texto
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red, // Cor do nível de dificuldade
                      shape: BoxShape.circle,
                    ),
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(width: 5),
                  Text(
                    difficulty,
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color(0xFF5E5E5E)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
