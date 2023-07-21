import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String upperText;
  final String lowerText;
  const DetailsCard({Key? key, required this.upperText, required this.lowerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child:
      Column(
        children: [
          Text(upperText,style: TextStyle(color: Colors.white70),),
          SizedBox(height: 8,),
          Text(lowerText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),

        ],
      ),
    );
  }
}
