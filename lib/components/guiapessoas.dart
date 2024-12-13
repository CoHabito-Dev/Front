import 'package:flutter/material.dart';

class ParticipantList extends StatelessWidget {
  final List<String> participantes;

  ParticipantList({required this.participantes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: participantes.length, // Usa o tamanho real da lista
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  participantes[index],
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  height: 2, // Altura da linha
                  width: 60, // Largura da linha
                  color: const Color.fromARGB(255, 151, 151, 151), // Cor da linha
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}