import 'package:flutter/material.dart';

class TopIcons extends StatelessWidget {
  const TopIcons({super.key, required this.icon});

  final IconData icon;
  final double size = 32;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
    );
  }
}
