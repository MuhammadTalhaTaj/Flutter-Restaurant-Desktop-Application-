import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  Future<String?> getAllProductApiCall() async {
    var url = Uri.parse('http://localhost:7211/getAllDbProducts');
    // var body = json.encode();
    var response = await http.post(
      url,
      // body: body,
      headers: {"Content-Type": "application/json"},
    );

    var newResponse = jsonDecode(response.body.toString());

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      print(response.body);

      //
    } else {
      //todo show error;
      print(newResponse);
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    getAllProductApiCall();
    return const Placeholder();
  }
}
