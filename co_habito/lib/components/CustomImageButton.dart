import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  CustomImageButton({
    required this.imageUrl,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
