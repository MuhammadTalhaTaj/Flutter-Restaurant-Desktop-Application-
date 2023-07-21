import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final text;

  const CustomTextField({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Set your desired width
      height: 50, // Set your desired height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Half of the height to make it circular
        color: Color(0xFCF4F4F2), // Background color
      ),
      //padding: EdgeInsets.symmetric(horizontal: 16), // Add some padding for text alignment
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
          labelText: text,
        ),
      ),
    );
  }
}
