import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Map<String, dynamic>> listData = List<Map<String, dynamic>>.generate(
      10, (counter) => {"name": "customer $counter", "orders": counter});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ColorScheme clr = Theme.of(context).colorScheme;
    //
    return Scaffold(body: Center());
  }
}
