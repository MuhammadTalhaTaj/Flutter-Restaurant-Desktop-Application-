import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';
class PICustomTextField extends StatelessWidget {
  final upperText;
  final text;

  const PICustomTextField({Key? key, this.text, this.upperText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(upperText,style: bodyTextStyle(context).copyWith(fontSize: 11,),),
        Container(
          height: 35,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
            //  fillColor: Color(0xFCF4F4F2),
              labelText: text,
            ),
          ),
        ),
      ],
    );
  }
}
