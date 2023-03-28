import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final nameFieldController = TextEditingController();
  final priceFieldController = TextEditingController();
  final udfFieldController = TextEditingController();

  Future<String?> addProductApiCall(
      String productName, String productUdfString, double price) async {
    print(
        "productName: $productName productUdfString: $productUdfString price: $price");
    var url = Uri.parse('http://localhost:7211/createProduct');
    var body = json.encode({
      'productName': productName,
      'productUdfString': productUdfString,
      'price': price
    });
    var response = await http.post(
      url,
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    var newResponse = jsonDecode(response.body.toString());

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      print("product created successfully!");

      //
    } else {
      //todo show error;
      print(newResponse);
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: nameFieldController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Product Name',
              ),
            ),
            TextFormField(
              controller: udfFieldController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Information 1',
              ),
            ),
            TextFormField(
              controller: priceFieldController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered

              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Price',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                addProductApiCall(
                    nameFieldController.text,
                    udfFieldController.text,
                    double.parse(priceFieldController.text));
              },
              child: Text("Add Product"),
            ),
          ],
        ),
      ),
    );
  }
}
