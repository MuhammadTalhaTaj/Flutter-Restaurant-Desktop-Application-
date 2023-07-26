import 'package:flutter/material.dart';


TextStyle headingTextStyle(context) {
  return TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.primary,
  );
}

TextStyle bodyTextStyle(context) {
  return TextStyle(
    fontSize: 14,
    color: Theme.of(context).colorScheme.secondary,
  );
}


Color iconColor(context){
  return Theme.of(context).colorScheme.secondary;



}

