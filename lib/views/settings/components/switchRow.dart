import 'package:flutter/material.dart';
import 'package:intel_comm_flutter/constants/textStyles.dart';

class SwitchRow extends StatefulWidget {
  String text;
  bool forAndroid;
  final ValueChanged<bool> onPress;


  SwitchRow(this.forAndroid, this.onPress,this.text);

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width:160,child: Text(widget.text,style: bodyTextStyle(context).copyWith(fontWeight: FontWeight.bold,fontSize: 17),)),
          Switch(
            splashRadius: 50.0,
            value: widget.forAndroid,
            onChanged: widget.onPress,
          ),
          Switch(
            splashRadius: 50.0,
            value: widget.forAndroid,
            onChanged: (value) => setState(() => widget.forAndroid = value),
          ),

        ],
      ),
    );
  }
}
