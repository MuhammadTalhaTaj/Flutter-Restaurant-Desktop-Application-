import 'package:flutter/material.dart';

class AppearanceRow extends StatelessWidget {
  final String text;
  final bool forAndroid;
  final ValueChanged<bool> onPress;


  //SwitchRow(this.forAndroid, this.onPress,this.text);
   AppearanceRow({Key? key, required this.forAndroid,required this.onPress,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(fontSize: 14),),
        Switch(
          splashRadius: 50.0,
          value: forAndroid,
          onChanged: onPress),

      ],
    );
  }
}
