import 'package:flutter/material.dart';

class ItemCardExpand extends StatefulWidget {
  final ImageProvider imageProvider;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const ItemCardExpand({Key? key, required this.imageProvider, required this.text, required this.isSelected, required this.onTap}) : super(key: key);

  @override
  State<ItemCardExpand> createState() => _ItemCardExpandState();
}

class _ItemCardExpandState extends State<ItemCardExpand> {

  @override
  Widget build(BuildContext context) {
     return GestureDetector(

        onTap: widget.onTap,
        child: Card(
        color: widget.isSelected ? Colors.green : Theme.of(context).colorScheme.primaryContainer,




        elevation: 5,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
       Flexible(
         child: Image(image:widget.imageProvider,
           height: 130,
          width: 130,
      ),
       ),

          Flexible(child: Text(widget.text)),
          Flexible(child: Text("15g",style: TextStyle(color: Colors.white70),)),

          Flexible(child: Text("\$3.50",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),

        ],
      ),
    ));
  }
}
