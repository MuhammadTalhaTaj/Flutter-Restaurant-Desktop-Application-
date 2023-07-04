import 'package:flutter/material.dart';

class MediumIconWidget extends StatelessWidget {
  MediumIconWidget({super.key, required this.icon});

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 32,
    );
  }
}
