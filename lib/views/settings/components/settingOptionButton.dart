import 'package:flutter/material.dart';

class SettingOptionButton extends StatefulWidget {
  final Color? customColor;
  final IconData iconData;
  final String text;
  final VoidCallback onPressed;

   SettingOptionButton(
      {Key? key, required this.iconData, required this.text,this.customColor, required this.onPressed})
      : super(key: key);

  @override
  State<SettingOptionButton> createState() => _SettingOptionButtonState();
}

class _SettingOptionButtonState extends State<SettingOptionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed:widget.onPressed,
        child: Row(
          children: [
            Icon(widget.iconData),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                widget.text,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            shape: LinearBorder(),
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            foregroundColor: Colors.white
        ),
      ),
    );
  }
}
