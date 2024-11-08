import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';

class RowDataBills extends StatelessWidget {
  final ImageProvider imageProvider;
  final text;
  final text2;

  const RowDataBills({Key? key, required this.imageProvider, this.text, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15,right: 15,bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image(image: imageProvider,width: 35,height: 35,),
                  SizedBox(width: 15,),
                  Text(text,style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Text('\$$text2',style: bodyTextStyle(context).copyWith(fontSize: 18,fontWeight: FontWeight.bold),),



          ],
        ),

    );
  }
}
