import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircleAvatar(
      backgroundColor: Colors.grey[400],
      radius: size.width * .08,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText(
            'intel_comm',
            speed: Duration(
              milliseconds: 100,
            ),
            textStyle: TextStyle(
                // fontSize: 50,
                ),
          ),
          TypewriterAnimatedText(
            'Intelligent Commerce',
            speed: Duration(
              milliseconds: 100,
            ),
            textStyle: TextStyle(
                // fontSize: 50,
                ),
          ),
        ],
      ),
    );
  }
}
