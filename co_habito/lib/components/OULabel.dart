import 'package:flutter/material.dart';

class OULabel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          size: Size(94, 94),
          painter: LinePainter(),
        ),
        SizedBox(width: 15,),
        Text(
          'OU',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
            letterSpacing: 0.02,
            color: Color(0xFF818080)
          ),
        ),
        SizedBox(width: 15,),
        CustomPaint(
          size: Size(94, 94),
          painter: LinePainter(),
        )
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFB3B3B3) // Cor da linha
      ..strokeWidth = 3; // Largura da linha

    canvas.drawLine(
      Offset(0, size.height / 2), // Ponto inicial
      Offset(size.width, size.height / 2), // Ponto final
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}