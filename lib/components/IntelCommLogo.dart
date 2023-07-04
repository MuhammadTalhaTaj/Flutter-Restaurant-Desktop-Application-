import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class IntelCommLogo extends StatelessWidget {
  double fontSize;
  IntelCommLogo({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          'intel_comm',
          speed: Duration(
            milliseconds: 100,
          ),
          textStyle: TextStyle(
            fontSize: fontSize,
          ),
        ),
        TypewriterAnimatedText(
          'Intelligent Commerce',
          speed: Duration(
            milliseconds: 100,
          ),
          textStyle: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
