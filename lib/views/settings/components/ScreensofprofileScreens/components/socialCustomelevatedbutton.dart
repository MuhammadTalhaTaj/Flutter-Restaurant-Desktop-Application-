import 'package:flutter/material.dart';

class SocialCustomElevatedButton extends StatelessWidget {
  final IconData icon;
  final text;
  const SocialCustomElevatedButton({Key? key, required this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        primary:
        Color(0xFFFEFEFE), // Customizing button color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 11,fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
