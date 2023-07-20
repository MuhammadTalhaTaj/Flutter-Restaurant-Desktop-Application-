import 'package:flutter/material.dart';

class RowData extends StatelessWidget {
  final ImageProvider imageProvider;
  final text;

  const RowData({Key? key, required this.imageProvider, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            child: Row(
              children: [
                Image(image: imageProvider,width: 35,height: 35,),
                SizedBox(width: 13,),
                Text(text),
              ],
            ),
          ),


           Container(
             child: Row(
               children: [
                 SizedBox(
                     child: ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.white,
                         backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer, // Set the color of the text and icons when pressed
                         // You can customize other properties here as well
                       ),

                       child: Icon(Icons.minimize_sharp),
                     )),
                 SizedBox(width: 13,),

                 Text('1x'),
                 SizedBox(width: 13,),

                 SizedBox(

                     child: ElevatedButton(
                       onPressed: () {},
                       style: ElevatedButton.styleFrom(
                         foregroundColor: Colors.white,
                         backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer, // Set the color of the text and icons when pressed
                         // You can customize other properties here as well
                       ),

                       child: Icon(Icons.add),
                     )),
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
