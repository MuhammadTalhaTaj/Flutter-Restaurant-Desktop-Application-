import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intel_comm_flutter/services/user.dart';
import 'package:intel_comm_flutter/views/home/home.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signUpApiCall(String username, String password) async {
    User? customUser = context.read<User>();

    var url = Uri.parse('http://localhost:7213/createUser');
    var body = json.encode({'username': username, 'password': password});
    var response = await http.post(
      url,
      body: body,
      headers: {"Content-Type": "application/json"},
    );

    var newResponse = jsonDecode(response.body.toString());

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      customUser.setUser(
          username, newResponse["user_id"], newResponse["isSubscribed"]);

      //navigate to home and remove all previous routes
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Home()),
        (Route<dynamic> route) => false,
      );

      //
    } else {
      //todo show error;
      print(newResponse);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                signUpApiCall(usernameController.text, passwordController.text);
              },
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
