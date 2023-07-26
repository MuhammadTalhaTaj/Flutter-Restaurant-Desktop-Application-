import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';

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
          Text(upperText,style: bodyTextStyle(context),),
          SizedBox(height: 8,),
          Text(lowerText,style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold,fontSize: 17),),

        ],
      ),
    );
  }
}
