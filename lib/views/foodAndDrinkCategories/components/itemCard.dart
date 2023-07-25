import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final ImageProvider imageProvider;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const ItemCard({Key? key, required this.imageProvider, required this.text, required this.isSelected, required this.onTap}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

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

        ],
      ),
    ));
  }
}
