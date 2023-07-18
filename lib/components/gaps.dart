import 'package:flutter/material.dart';

class ygap extends StatelessWidget {
  ygap({super.key, this.height});

  double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null ? height : 20,
    );
  }
}

class xgap extends StatelessWidget {
  xgap({super.key, this.width});

  double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ? width : 20,
    );
  }
}
