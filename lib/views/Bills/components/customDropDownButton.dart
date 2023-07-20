import 'package:flutter/material.dart';

import '../../../components/dropDownButton.dart';
const List<String> list = <String>['All Orders', 'Main Orders', 'Others', 'Four'];

class CustomDropDownButton extends StatefulWidget {
  String dropdownValue=list[0];
   ValueChanged<String> onPressed;

  CustomDropDownButton(this.dropdownValue,this.onPressed,);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  void initState() {
    super.initState();
    widget.dropdownValue = list[0];
  }
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: widget.dropdownValue.isNotEmpty?widget.dropdownValue:null,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.white70),

      onChanged: (value){widget.onPressed(value!);},
      items:
      list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
