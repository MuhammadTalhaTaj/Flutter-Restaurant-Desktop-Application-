import 'package:flutter/material.dart';

class CustomIConButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  const CustomIConButton({Key? key, required this.color, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
          color:color,
        ),
        child: Align(alignment:Alignment.topCenter,
        child: Icon(iconData, color: Colors.black)),
      ),
    );
  }
}
