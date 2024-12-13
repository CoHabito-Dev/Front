import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  CustomImageButton({
    required this.imageUrl,
    required this.onPressed,
    double? width,
    double? height,
  }) : width = width ?? 32, height = height ?? 32;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
